import Foundation
import AnyCodable

// wire protocol
// <8 character hex length>\n<message of hex length bytes>\n

public typealias UnusedBody = String?

public struct Request<T: Codable>: Codable {
    public let seq: Int
    public let type: String
    public let command: String
    public let arguments: T
}

extension Request: Equatable where T: Equatable {
}

extension Request: Hashable where T: Hashable {
}

public typealias AnyRequest = Request<AnyCodable>

public struct Event<T: Codable>: Codable {
    public let seq: Int
    public let type: String
    public let event: String
    public let body: T
}

extension Event: Equatable where T: Equatable {
}

extension Event: Hashable where T: Hashable {
}

public typealias AnyEvent = Event<AnyCodable>

public struct Response<T: Codable>: Codable {
    public let seq: Int
    public let type: String
    public let requestSeq: Int
    public let success: Bool
    public let command: String
    public let message: String?
    public let body: T
}

extension Response: Equatable where T: Equatable {
}

extension Response: Hashable where T: Hashable {
}

public typealias AnyResponse = Response<AnyCodable>

public struct ErrorResponse: Codable, Hashable {
    public struct Body: Codable, Hashable {
        let error: String?
    }

    public let seq: Int
    public let type: String
    public let requestSeq: Int
    public let success: Bool
    public let command: String
    public let message: String?
    public let body: Body

    private enum CodingKeys: String, CodingKey {
        case seq
        case type
        case requestSeq = "request_seq"
        case success
        case command
        case message
        case body
    }
}

public enum Message {
    case request(AnyRequest)
    case event(AnyEvent)
    case response(AnyResponse)
    case errorResponse(ErrorResponse)
}
