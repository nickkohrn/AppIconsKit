import Foundation

public struct AppIconsClient {
    public var alternateIconName: @MainActor @Sendable () async -> String?
    public var selectIcon: @MainActor @Sendable (AppIcon) async -> Void
    public var supportsAlternateIcons: @MainActor @Sendable () -> Bool
}
