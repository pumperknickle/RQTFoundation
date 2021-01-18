import Foundation

/// Human labelled information on a textual artifact which corresponds to
/// a span of the text (span != nil)
/// or the entire artifact itself (span == nil)
public protocol Tag: Codable {
    associatedtype Artifact: TextualArtifact
    typealias ID = Artifact.ID
    var id: ID? { get }
    var target: ID { get }
    var span: (UInt32, UInt32)? { get }
    var attribute: String { get }
    var value: String? { get }
    var createdAt: Date? { get }
    init(id: ID?, target: ID, span: (UInt32, UInt32)?, attribute: String, value: String?, createdAt: Date?)
}
