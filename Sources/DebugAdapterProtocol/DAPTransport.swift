import Foundation
import JSONRPC

// This class is nearly identical to JSONRPC's ProtocolTransport. But, DAP does not use JSON-RPC, so
// it does not work...

//final class DAPTransport {
//    public typealias ResponseResult<T: Codable> = Result<Response<T>, Error>
//
//    public var requestHandler: ((AnyRequest, Data, @escaping (AnyResponse) -> Void) -> Void)?
//    public var eventHandler: ((AnyEvent, Data, @escaping (Error?) -> Void) -> Void)?
//    public var errorHandler: ((Error) -> Void)?
//    public var logMessages = true
//
//    private let dataTransport: DataTransport
//
//    init(dataTransport: DataTransport) {
//        self.dataTransport = dataTransport
//    }
//}

//extension DAPTransport {
//    public func sendRequest<T, U>(_ params: T, command: String, responseHandler: @escaping (ResponseResult<U>) -> Void) where T: Codable, U: Decodable {
//    }
//}
