import Foundation

public struct RequirementTagImpl {
    private let rawId: ID?
    private let rawTarget: ID
    private let rawSpan: UInt64?
    private let rawAttribute: String
    private let rawValue: String?
    private let rawCreatedAt: Date?
}

extension RequirementTagImpl: Tag {
    public typealias Artifact = RequirementVersionImpl
    public var id: ID? { return rawId }
    public var target: ID { return rawTarget }
    public var span: UInt64? { return rawSpan }
    public var attribute: String { return rawAttribute }
    public var value: String? { return rawValue }
    public var createdAt: Date? { return rawCreatedAt }
    
    public var leftSpan: UInt32? { return span?.parts.0 }
    public var rightSpan: UInt32? { return span?.parts.1 }
    
    public init(id: ID?, target: ID, span: (UInt32, UInt32)?, attribute: String, value: String?, createdAt: Date?) {
        self.init(id: id, target: target, span: (span != nil ? UInt64(a: span!.0, b: span!.1) : nil), attribute: attribute, value: value, createdAt: createdAt)
    }
    
    public init(id: ID?, target: ID, span: UInt64?, attribute: String, value: String?, createdAt: Date?) {
        self.rawId = id
        self.rawTarget = target
        self.rawSpan = span
        self.rawAttribute = attribute
        self.rawValue = value
        self.rawCreatedAt = createdAt
    }
}
