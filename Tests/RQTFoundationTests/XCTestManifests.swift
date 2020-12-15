import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(RQTFoundationTests.allTests),
    ]
}
#endif
