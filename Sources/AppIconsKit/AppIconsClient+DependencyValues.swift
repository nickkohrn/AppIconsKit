import ComposableArchitecture

extension DependencyValues {
    public var appIconsClient: AppIconsClient {
        get { self[AppIconsClient.self] }
        set { self[AppIconsClient.self] = newValue }
    }
}
