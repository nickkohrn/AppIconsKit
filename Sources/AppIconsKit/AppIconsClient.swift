import Foundation

public struct AppIconsClient {
    public var alternateIconName: @MainActor @Sendable () async -> String?
    public var selectIcon: @MainActor @Sendable (_ name: String) async -> Void
    public var supportsAlternateIcons: @MainActor @Sendable () -> Bool
}
