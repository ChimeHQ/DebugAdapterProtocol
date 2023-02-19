import Foundation
import JSONRPC

public enum ServerError: Error {
	case unableToSendRequest(Error)
	case serverError(message: String, data: Codable?)
}

public struct ServerHandlers {
	public var requestHandler: Server.RequestHandler?
	public var notificationHandler: Server.NotificationHandler?

	public init(requestHandler: Server.RequestHandler? = nil, notificationHandler: Server.NotificationHandler? = nil) {
		self.requestHandler = requestHandler
		self.notificationHandler = notificationHandler
	}
}

public protocol Server {
	typealias RequestHandler = (ServerRequest) async throws -> JSONValue
	typealias NotificationHandler = (ServerNotification) async throws -> Void

	func setHandlers(_ handlers: ServerHandlers) async throws
	func sendNotification(_ notif: ClientNotification) async throws
	func sendRequest<Response: Decodable>(_ request: ClientRequest) async throws -> Response
}

public extension Server {
	func initialize(params: InitializeRequestArguments) async throws -> InitializeResponse {
		return try await sendRequest(.initialize(params))
	}
}
