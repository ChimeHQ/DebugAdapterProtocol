import Foundation
import JSONRPC

class DAPServer {
	//    typealias ProtocolResponse<T: Decodable> = DAPTransport.ResponseResult<T>
	
	//	private let protocolTransport: DAPTransport
	
	//	public init(protocolTransport: DAPTransport) {
	//		self.protocolTransport = protocolTransport
	//
	//		protocolTransport.requestHandler = { [weak self] in self?.handleRequest($0, data: $1, callback: $2) }
	//		protocolTransport.eventHandler = { [weak self] in self?.handleEvent($0, data: $1, block: $2) }
	//		protocolTransport.errorHandler = { error in
	//			print("protocol level error: ", String(describing: error))
	//		}
	//	}
	
	//	public convenience init(dataTransport: DataTransport)  {
	//		let framing = LengthPrefixMessageFraming()
	//		let messageTransport = MessageTransport(dataTransport: dataTransport, messageProtocol: framing)
	//
	//		self.init(protocolTransport: DAPTransport(dataTransport: messageTransport))
	//	}
	
	//	deinit {
	//		protocolTransport.requestHandler = nil
	//		protocolTransport.eventHandler = nil
	//	}
	
	//	public var logMessages: Bool {
	//		get { return protocolTransport.logMessages }
	//		set { protocolTransport.logMessages = newValue }
	//	}
}
//
extension DAPServer: Server {
	public func setHandlers(_ handlers: ServerHandlers) async throws {
		throw ServerError.serverError(message: "nope", data: nil)
	}
	
	public func sendNotification(_ notif: ClientNotification) async throws {
		throw ServerError.serverError(message: "nope", data: nil)
	}
	
	public func sendRequest<Response: Decodable>(_ request: ClientRequest) async throws -> Response {
		throw ServerError.serverError(message: "nope", data: nil)
	}
}
