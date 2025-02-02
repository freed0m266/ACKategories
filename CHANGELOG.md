# Changelog

- please enter new entries in format 

```
- <description> (#<PR_number>, kudos to @<author>)
```

## Next

## 6.12.3
- Added `BetterURL` implementation to improve URL parsing ([#129](https://github.com/AckeeCZ/ACKategories/pull/129), kudos to @AGr-AlexandrGrigoryev)
- Bump deployment target to iOS 11.0 and macOS 10.13

## 6.12.2
- Specify Obj-C name for TagListView ([#127](https://github.com/AckeeCZ/ACKategories/pull/127), kudos to @olejnjak)

## 6.12.1
- Update for Xcode 14 ([#126](https://github.com/AckeeCZ/ACKategories/pull/126), kudos to @olejnjak)

## 6.12.0
- Binary is built using Xcode 13.4 ([#125](https://github.com/AckeeCZ/ACKategories/pull/125), kudos to @olejnjak)
- Add `projectedValue` to `UserDefault` property wrapper with `CurrentValueSubject` ([#124](https://github.com/AckeeCZ/ACKategories/pull/124), kudos to @olejnjak)
- Fix navigation stack when managed by flow coordinators in non-linear hierarchy ([#123](https://github.com/AckeeCZ/ACKategories/pull/123), kudos to @olejnjak)
- Add `flatMapLatest` extension to `Publisher`. ([#120](https://github.com/AckeeCZ/ACKategories/pull/120), kudos to @olejnjak)
- Add custom `ZipMany` publisher. ([#116](https://github.com/AckeeCZ/ACKategories/pull/116), kudos to @vendulasvastal)

## 6.11.1
- Fix target membership of `Publisher` extensions ([#121](https://github.com/AckeeCZ/ACKategories/pull/121), kudos to @olejnjak)

## 6.11.0

- Create `PublisherExtensions.swift` and add `weakAssign(on:to:)`. ([#116](https://github.com/AckeeCZ/ACKategories/pull/116), kudos to @vendulasvastal)

- Add option to implement custom push transition ([#115](https://github.com/AckeeCZ/ACKategories/pull/115), kudos to @leinhauplk)

## 6.10.0

- Add `prototypeSupplementaryView(ofKind:type)` to `UICollectionView` extensions ([#114](https://github.com/AckeeCZ/ACKategories/pull/114), kudos to @olejnjak)

## 6.9.3

- Update image rendering API to use the newest `UIGraphicsImageRenderer` ([#113](https://github.com/AckeeCZ/ACKategories/pull/113), kudos to @LukasHromadnik)

## 6.9.2

- Fix target membership for _IntExtensions_ ([#112](https://github.com/AckeeCZ/ACKategories/pull/112), kudos to @olejnjak)

## 6.9.1

- Add `Int` inits that safely convert given floating value (`Double`, `Float`, `CGFloat`) to `Int` by checking for `NaN` and `infinity` ([#110](https://github.com/AckeeCZ/ACKategories/pull/110), kudos to @olejnjak)
- `SelfSizingTableHeaderFooterView` - fix crash when device orientation has changed ([#111](https://github.com/AckeeCZ/ACKategories/pull/111), kudos to @leinhauplk)

## 6.9.0

- Add `TagListView` ([#107](https://github.com/AckeeCZ/ACKategories/pull/107), kudos to @olejnjak)
- Use Xcode 13.1 ([#109](https://github.com/AckeeCZ/ACKategories/pull/109), kudos to @olejnjak)

## 6.8.1

- Make all public functions open to enable overrides in subclasses ([#105](https://github.com/AckeeCZ/ACKategories/pull/105), kudos to @janmisar)

## 6.8.0

### Fixed

- Put `stop` of `childCoordinators` on main thread ([#103](https://github.com/AckeeCZ/ACKategories/pull/103), kudos to @IgorRosocha)

### Added 

- Add completion blocks to `UINavigationController` pop and push methods ([#101](https://github.com/AckeeCZ/ACKategories/pull/101), kudos to @olejnjak)
- Add possibility to configure GradientView with public properties `colors` and `axis` even after init ([#104](https://github.com/AckeeCZ/ACKategories/pull/104), kudos to @janmisar)

## 6.7.4

### Fixed

-  Update colors in `GradientView` when user interface style changed ([#102](https://github.com/AckeeCZ/ACKategories/pull/102), kudos to @leinhauplk)

## 6.7.3

### Fixed

- Check if `navigationController != rootViewController` before running navigation delegate method ([#100](https://github.com/AckeeCZ/ACKategories/pull/100), kudos to @lukashromadnik)
- `GradientView` has `isUserInteractionEnabled = false` as it is not supposed to be interactive by design ([#99](https://github.com/AckeeCZ/ACKategories/pull/99), kudos to @olejnjak)
- Check the value of `rootViewController` before stopping the flow ([#98](https://github.com/AckeeCZ/ACKategories/pull/98), kudos to @lukashromadnik)

## 6.7.2

### Fixed

- Remove support for unavailable type `Float80` on macOS ([#97](https://github.com/AckeeCZ/ACKategories/pull/97), kudos to @lukashromadnik)

### Changed

- Removed SnapKit from the library ([#97](https://github.com/AckeeCZ/ACKategories/pull/97), kudos to @lukashromadnik)

## 6.7.1

### Added

- Tests for `FlowCoordinator.stop()` ([#96](https://github.com/AckeeCZ/ACKategories/pull/96), kudos to @lukashromadnik)

### Fixed

- Fix `FlowCoordinator`'s navigation flow handler ([#96](https://github.com/AckeeCZ/ACKategories/pull/96), kudos to @lukashromadnik)

## 6.7.0

- Deprecated `TableHeaderFooterView` because of different `readableContentGuide` behavior ([#92](https://github.com/AckeeCZ/ACKategories/pull/92), kudos to @leinhauplk)
- Updated iOS deployment target to **9.0** to make Xcode 12 happy ([#95](https://github.com/AckeeCZ/ACKategories/pull/95), kudos to @olejnjak)

### Fixed

- Encoding of primitive values ([#90](https://github.com/AckeeCZ/ACKategories/pull/90), kudos to @fortmarek) 
- `completion` of `Base.FlowCoordinator.stop()` is sometimes not called ([#94](https://github.com/AckeeCZ/ACKategories/pull/94), kudos to @lukashromadnik)

## 6.6.0

### Added

- Completion block for `stop` ([#88](https://github.com/AckeeCZ/ACKategories/pull/88), kudos to @fortmarek)
- Run SwiftLint on build if installed locally ([#87](https://github.com/AckeeCZ/ACKategories/pull/87), kudos to @olejnjak)
- Add Catalyst support to iOS target ([#86](https://github.com/AckeeCZ/ACKategories/pull/86), kudos to @olejnjak)
- Add UserDefault property wrapper ([#85](https://github.com/AckeeCZ/ACKategories/pull/85), kudos to @fortmarek)

## 6.5.1

### Changed
- Reverted `BUILD_LIBRARY_FOR_DISTRIBUTION` to false ([#84](https://github.com/AckeeCZ/ACKategories/pull/84), kudos to @fortmarek)

## 6.5.0

### Added

- Add Random extensions ([#82](https://github.com/AckeeCZ/ACKategories/pull/82), kudos to @fortmarek)
- Add more arguments from `NSLocalizedString` to `String.localized()` ([#80](https://github.com/AckeeCZ/ACKategories/pull/80), kudos to @olejnjak)
- Add prototype cell storage to `UITableView` and `UICollectionView` ([#78](https://github.com/AckeeCZ/ACKategories/pull/78), kudos to @olejnjak)

### Changed

- Deprecated `safeArea` extension on iOS 11+ ([#79](https://github.com/AckeeCZ/ACKategories/pull/76), kudos to @olejnjak)
- Fix typos ([#76](https://github.com/AckeeCZ/ACKategories/pull/76), kudos to @michalsrutek)
- Set `BUILD_LIBRARY_FOR_DISTRIBUTION` to `YES` ([#75](https://github.com/AckeeCZ/ACKategories/pull/75), kudos to @fortmarek)
- Do not dismiss `presentingViewController` of `rootViewController` on `Base.FlowCoordinator` `stop()` when remaining VCs in the navigation stack ([#72](https://github.com/AckeeCZ/ACKategories/pull/72), kudos to @IgorRosocha)

### Fixed

- Fix changelog check ([#81](https://github.com/AckeeCZ/ACKategories/pull/72), kudos to @olejnjak)

## 6.4.1

### Fixed

- Fix `GradientView` layer frame on orientation change ([#74](https://github.com/AckeeCZ/ACKategories/pull/74), kudos to @fortmarek)
- Fix generate docs action ([#73](https://github.com/AckeeCZ/ACKategories/pull/73), kudos to @fortmarek)
- Fix a typo ([#70](https://github.com/AckeeCZ/ACKategories/pull/70), kudos to @michalsrutek)

### Changed

- Use a preferred `AnyObject` keyword instead of `class` in protocol conformance ([#71](https://github.com/AckeeCZ/ACKategories/pull/71), kudos to @michalsrutek)

## 6.4.0

### Added

- Add [swift-doc](https://github.com/SwiftDocOrg/swift-doc) action, checks actions ([#67](https://github.com/AckeeCZ/ACKategories/pull/67), kudos to @fortmarek)
- add `UIDevice.current.modelName` extension to receive model name of current device (#66, kudos to @olejnjak)
- add `clearLaunchScreenCache()` to completely clear launch screen cache (#63, kudos to @igorrosocha)

### Fixed

- Fix swiftlint violations ([#69](https://github.com/AckeeCZ/ACKategories/pull/69), kudos to @fortmarek)
- Fix wrong transparency in `UIColor.image()` (#65, kudos to @janmisar)

### Changed

- Update tapestry structure ([#68](https://github.com/AckeeCZ/ACKategories/pull/68), kudos to @fortmarek)
- separate frameworks for Swift and iOS (#64, kudos to @olejnjak)
- use native `UISearchBar.searchTextField` on iOS 13+ (#61, kudos to @olejnjak)

## 6.3
- add support for generic dequeueing for MKAnnotationViews `dequeueAnnotationView(for annotation: MKAnnotation)` (#60, kudos to @svastven)
- add support for Dark Mode when creating colored images from `UIColor` (#59, kudos to @svastven)
- add `tapestry` for automating future releases (#56, kudos to @fortmarek)
- update [FlowCoordinator](ACKategories/Base/FlowCoordinator.swift) to count with iOS 13 modal presentations (#55, kudos to @olejnjak)

## 6.2
- add `forceIntrinsic()` to `UIView` to set its `contentHuggingPriority` and `contentCompressionResistance` to `UILayoutPriority.required` (#48, kudos to @olejnjak)
- add `hexString` closure into `UIColorExtension` that will return hex string from `UIColor` (#49, kudos to @majkcajk)
- add SwiftPM manifest (#52, kudos to @olejnjak)
- add `type` parameter to `dequeueCell(...)` methods so using it is more convenient (#53, kudos to @olejnjak)

  From now you can also use
  ```swift
  tableView.dequeueCell(for: indexPath, type: YourCell.self)
  ```

## 6.1
- added deep link generic for `Base.FlowCoordinator` (#47, kudos to @fortmarek)
- Swift 5 & Xcode 10.2 migration (#45, kudos to @janmisar)
- base classes for VCs, VMs, FCs (#45, kudos to @janmisar)

## 6.0.3
- fix init emoji in `FlowCoordinator` (#42, kudos to @Dominoo)

## 6.0.2
- move from NSLog to unified logging (#39, kudos to @fortmarek)
- allow additional logic for isEmpty for collections (#40, kudos to @fortmarek) 
- add LICENSE file to Cocoapods source files

