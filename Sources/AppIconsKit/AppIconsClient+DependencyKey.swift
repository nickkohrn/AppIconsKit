import ComposableArchitecture
import Foundation
import UIKit

extension AppIconsClient: DependencyKey {
    public static let liveValue = AppIconsClient(
        alternateIconName: {
            UIApplication.shared.alternateIconName
        },
        selectIcon: { name in
            guard UIApplication.shared.alternateIconName != name else { return }
            do {
                try await UIApplication.shared.setAlternateIconName(name)
            } catch {
                // TODO: Log error
                print("Updating icon to \(String(describing: name)) failed: \(error.localizedDescription)")
            }
        },
        supportsAlternateIcons: {
            UIApplication.shared.supportsAlternateIcons
        }
    )
}
