import Foundation

public enum ClientNotification {
	case thing
}

public enum ClientRequest {
	case initialize(InitializeRequestArguments)

	public var command: String {
		switch self {
		case .initialize:
			return "initialize"
		}
	}
}

public enum ClientEvent {
	case thing
}

public enum ServerNotification {
	case thing
}

public enum ServerEvent {
	public enum Command: String {
		case initialized
	}

	case initialized
}

public enum ServerRequest {
	case thing
}
