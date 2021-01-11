/// A persisted element with text content
public protocol TextualArtifact: Codable {
    associatedtype ID: LosslessStringConvertible
    var id: ID? { get }
    var text: String { get }
}
