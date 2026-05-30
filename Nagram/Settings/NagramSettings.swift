import Foundation

// MARK: NAGRAM — 增强开关集中地，对标 Swiftgram 的 SGSimpleSettings。
// 首期仅 forceCopyEnabled，读 UserDefaults，默认 false（基线对照用）。
public final class NagramSettings {
    public static let shared = NagramSettings()

    private let defaults = UserDefaults.standard
    private enum Keys {
        static let forceCopyEnabled = "nagram.forceCopyEnabled"
    }

    private init() {}

    public var forceCopyEnabled: Bool {
        get { defaults.bool(forKey: Keys.forceCopyEnabled) }
        set { defaults.set(newValue, forKey: Keys.forceCopyEnabled) }
    }
}
