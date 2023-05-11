import Foundation
import UIKit

public struct AppIcon: Equatable, Identifiable {
    public let displayName: String
    public let name: String
    public var id: String { name }

    public init(
        name: String,
        displayName: String
    ) {
        self.name = name
        self.displayName = displayName
    }
}
