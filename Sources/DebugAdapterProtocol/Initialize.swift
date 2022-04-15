import Foundation

public struct InitializeRequestArguments: Codable, Hashable {
    public let clientID: String?
    public let clientName: String?
    public let adapterID: String
    public let locale: String?
    public let linesStartAt1: Bool?
    public let columnsStartAt1: Bool?
    public let pathFormat: String?
    public let supportsVariableType: Bool?
    public let supportsVariablePaging: Bool?
    public let supportsRunInTerminalRequest: Bool?
    public let supportsMemoryReferences: Bool?
    public let supportsProgressReporting: Bool?
    public let supportsInvalidatedEvent: Bool?
    public let supportsMemoryEvent: Bool?

    public init(clientID: String?,
                clientName: String?,
                adapterID: String,
                locale: String?,
                linesStartAt1: Bool?,
                columnsStartAt1: Bool?,
                pathFormat: String? = "path",
                supportsVariableType: Bool? = false,
                supportsVariablePaging: Bool? = false,
                supportsRunInTerminalRequest: Bool? = false,
                supportsMemoryReferences: Bool? = false,
                supportsProgressReporting: Bool? = false,
                supportsInvalidatedEvent: Bool? = false,
                supportsMemoryEvent: Bool? = false) {
        self.clientID = clientID
        self.clientName = clientName
        self.adapterID = adapterID
        self.locale = locale
        self.linesStartAt1 = linesStartAt1
        self.columnsStartAt1 = columnsStartAt1
        self.pathFormat = pathFormat
        self.supportsVariableType = supportsVariableType
        self.supportsVariablePaging = supportsVariablePaging
        self.supportsRunInTerminalRequest = supportsRunInTerminalRequest
        self.supportsMemoryReferences = supportsMemoryReferences
        self.supportsProgressReporting = supportsProgressReporting
        self.supportsInvalidatedEvent = supportsInvalidatedEvent
        self.supportsMemoryEvent = supportsMemoryEvent
    }
}

public typealias InitializeResponse = Response<Capabilities?>

public typealias InitializedEvent = Event<UnusedBody>
