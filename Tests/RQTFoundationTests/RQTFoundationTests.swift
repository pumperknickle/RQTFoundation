import XCTest
import Foundation
@testable import RQTFoundation

final class RQTFoundationTests: XCTestCase {
    func testConvertingUInt64ToUInt32() {
        for _ in 0..<1000 {
            let sampleNumber = UInt64.random(in: UInt64.min..<UInt64.max)
            let parts = sampleNumber.parts
            let firstPart = parts.0
            let secondPart = parts.1
            let combined = UInt64(a: firstPart, b: secondPart)
            XCTAssertEqual(combined, sampleNumber)
        }
    }

    static var allTests = [
        ("convert UInt64 to 2 UInt32 spans", testConvertingUInt64ToUInt32),
    ]
}
