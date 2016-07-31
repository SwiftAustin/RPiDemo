import XCTest
@testable import RpiDemo

class RpiDemoTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(RpiDemo().text, "Hello, World!")
    }


    static var allTests : [(String, (RpiDemoTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
