import Combine
import Foundation

private enum Keys {
    static var subject = UInt8(0)
}

/// A type safe property wrapper to set and get values from UserDefaults with support for defaults values.
///
/// Usage:
/// ```
/// @UserDefault("has_seen_app_introduction", default: false)
/// var hasSeenAppIntroduction: Bool
/// ```
///
/// [Apple documentation on UserDefaults](https://developer.apple.com/documentation/foundation/userdefaults)
@propertyWrapper
public final class UserDefault<Value: Codable> {
    private let key: String
    private let defaultValue: Value
    private var userDefaults: UserDefaults
    private let errorLogger: ((Error) -> Void)?

    /// - Parameters:
    ///     - key: Key for which the value should be saved
    ///     - default: Default value to be used
    ///     - userDefaults: `UserDefaults` where value should be saved into. Default is `UserDefaults.standard`
    ///     - errorLogger: Closure that is triggered with error from encoding/decoding values from setter/getter
    public init(
        _ key: String,
        `default`: Value,
        userDefaults: UserDefaults = .standard,
        errorLogger: ((Error) -> Void)? = { print($0) }
    ) {
        self.key = key
        self.defaultValue = `default`
        self.userDefaults = userDefaults
        self.errorLogger = errorLogger
    }

    public var wrappedValue: Value {
        get {
            // Check if `Value` is supported by default by `UserDefaults`
            if Value.self as? PropertyListValue.Type != nil {
                return userDefaults.object(forKey: key) as? Value ?? defaultValue
            } else {
                guard let data = userDefaults.object(forKey: key) as? Data else { return defaultValue }
                let decoder = JSONDecoder()
                // Encoding root-level `singleValueContainer` fails on iOS <= 12.0
                // Thus we always encode/decode it into array, so it has a root object
                // Related issue: https://github.com/AckeeCZ/ACKategories/issues/89
                do {
                    return try decoder.decode([Value].self, from: data).first ?? defaultValue
                } catch {
                    errorLogger?(error)
                    return defaultValue
                }
            }
        }
        set {
            if Value.self as? PropertyListValue.Type != nil {
                userDefaults.set(newValue, forKey: key)
            } else {
                let encoder = JSONEncoder()
                do {
                    let data = try encoder.encode([newValue])
                    userDefaults.set(data, forKey: key)
                } catch {
                    errorLogger?(error)
                }
            }

            if #available(iOS 13.0, macOS 10.15, *) {
                subject.send(newValue)
            }
        }
    }

    @available(iOS 13.0, macOS 10.15, *)
    public var projectedValue: AnyPublisher<Value, Never> {
        subject.eraseToAnyPublisher()
    }

    @available(iOS 13.0, macOS 10.15, *)
    // cannot have stored property with limited availability, cannot be lazy since Xcode 14
    private var subject: CurrentValueSubject<Value, Never> {
        if let subject = objc_getAssociatedObject(self, &Keys.subject) as? CurrentValueSubject<Value, Never> {
            return subject
        }

        let subject = CurrentValueSubject<Value, Never>(wrappedValue)
        objc_setAssociatedObject(self, &Keys.subject, subject, .OBJC_ASSOCIATION_RETAIN)
        return subject
    }
}

public extension UserDefault {
    convenience init<Wrapped>(_ key: String, `default`: Optional<Wrapped> = nil, userDefaults: UserDefaults = .standard) where Value == Optional<Wrapped> {
        self.init(key, default: `default`, userDefaults: userDefaults)
    }
}

/// Taken from: https://github.com/guillermomuntaner/Burritos/blob/master/Sources/UserDefault/UserDefault.swift
/// A type than can be stored in `UserDefaults`.
///
/// - From UserDefaults;
/// The value parameter can be only property list objects: NSData, NSString, NSNumber, NSDate, NSArray, or NSDictionary.
/// For NSArray and NSDictionary objects, their contents must be property list objects. For more information, see What is a
/// Property List? in Property List Programming Guide.
public protocol PropertyListValue {}

extension Data: PropertyListValue {}
extension NSData: PropertyListValue {}

extension String: PropertyListValue {}
extension NSString: PropertyListValue {}

extension Date: PropertyListValue {}
extension NSDate: PropertyListValue {}

extension NSNumber: PropertyListValue {}
extension Bool: PropertyListValue {}
extension Int: PropertyListValue {}
extension Int8: PropertyListValue {}
extension Int16: PropertyListValue {}
extension Int32: PropertyListValue {}
extension Int64: PropertyListValue {}
extension UInt: PropertyListValue {}
extension UInt8: PropertyListValue {}
extension UInt16: PropertyListValue {}
extension UInt32: PropertyListValue {}
extension UInt64: PropertyListValue {}
extension Double: PropertyListValue {}
extension Float: PropertyListValue {}

extension Array: PropertyListValue where Element: PropertyListValue {}

extension Dictionary: PropertyListValue where Key == String, Value: PropertyListValue {}
