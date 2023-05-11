import ComposableArchitecture
import Foundation
import UIKit

extension AppIconsClient: DependencyKey {
    public static let liveValue = AppIconsClient(
        alternateIconName: {
            UIApplication.shared.alternateIconName
        },
        selectIcon: { icon in
            guard
                UIApplication.shared.supportsAlternateIcons,
                UIApplication.shared.alternateIconName != icon.name
            else { return }
            do {
                try await UIApplication.shared.setAlternateIconName(icon.name)
            } catch {
                // TODO: Log error
                print("Updating icon to \(String(describing: icon.name)) failed: \(error.localizedDescription)")
            }
        }
    )
}
