import Foundation

public struct InitializeRequestArguments {
    public let clientID: String?
}

public typealias InitializeResponse = Response<Capabilities?>

public typealias InitializedEvent = Event<UnusedBody>
