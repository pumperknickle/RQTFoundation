import Foundation

public struct RequirementTagImpl {
    private let rawId: ID?
    private let rawTarget: ID
    private let rawLeft: Int?
    private let rawRight: Int?
    private let rawAttribute: String
    private let rawValue: String
    private let rawCreatedAt: Date?
}

extension RequirementTagImpl: Tag {
    public typealias Artifact = RequirementVersionImpl
    public var id: ID? { return rawId }
    public var target: ID { return rawTarget }
    public var left: Int? { return rawLeft }
    public var right: Int? { return rawRight }
    public var attribute: String { return rawAttribute }
    public var value: String { return rawValue }
    public var createdAt: Date? { return rawCreatedAt }
    
    public init(id: ID?, target: ID, span: (Int, Int)?, attribute: String, value: String, createdAt: Date?) {
        self.rawId = id
        self.rawTarget = target
        self.rawLeft = span?.0
        self.rawRight = span?.1
        self.rawAttribute = attribute
        self.rawValue = value
        self.rawCreatedAt = createdAt
    }
}
