import Foundation

public enum ClientRequest {
    public enum Command: String {
        case initialize
    }

    case initialize(InitializeRequestArguments)
}

public enum ServerNotification {
    public enum Event: String {
        case initialized
    }

    case initialized
}
