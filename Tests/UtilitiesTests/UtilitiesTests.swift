import XCTest
@testable import Utilities

final class UtilitiesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Utilities().text, "Hello, World!")
    }
    
    func testColorExample() {
        XCTAssert(ColorUtilities.hexStringToUIColor(hex: "d9d9d9"))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
