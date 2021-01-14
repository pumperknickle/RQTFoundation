import Foundation

extension Array {
    func split() -> [[Element]] {
        let ct = self.count
        let half = ct / 2
        let leftSplit = self[0 ..< half]
        let rightSplit = self[half ..< ct]
        return [Array(leftSplit), Array(rightSplit)]
    }
}

protocol DataConvertible {
    init?(data: Data)
    var data: Data { get }
}

extension DataConvertible where Self: ExpressibleByIntegerLiteral{
    init?(data: Data) {
        var value: Self = 0
        guard data.count == MemoryLayout.size(ofValue: value) else { return nil }
        _ = withUnsafeMutableBytes(of: &value, { data.copyBytes(to: $0)} )
        self = value
    }

    var data: Data {
        return withUnsafeBytes(of: self) { Data($0) }
    }
}

extension UInt64 : DataConvertible { }
extension UInt32 : DataConvertible { }

public extension UInt64 {
    init?(a: UInt32, b: UInt32) {
        guard let combined = UInt64(data: a.data + b.data) else { return nil }
        self = combined
    }
    var parts: (UInt32, UInt32) {
        return (UInt32(data: data[...3])!, UInt32(data: data[4...])!)
    }
}
