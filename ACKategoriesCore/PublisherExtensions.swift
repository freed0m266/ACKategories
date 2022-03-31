import Combine

@available(macOS 10.15, iOS 13.0, *)
extension Publisher where Failure == Never {
    /// Weakifies `Root` object and assigns `Output` to `keyPath` on `Root`.
    public func weakAssign<Root: AnyObject>(to keyPath: ReferenceWritableKeyPath<Root, Output>, on object: Root) -> AnyCancellable {
        sink { [weak object] value in
            object?[keyPath: keyPath] = value
        }
    }
}
