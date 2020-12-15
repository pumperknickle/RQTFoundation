/// A persisted element with text content
public protocol TextualArtifact {
    associatedtype ID
    var id: ID? { get }
    var text: String { get }
}
