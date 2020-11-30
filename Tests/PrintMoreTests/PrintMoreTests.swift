import XCTest
@testable import PrintMore

final class PrintMoreTests: XCTestCase {
	/*func testExample() {
	// This is an example of a functional test case.
	// Use XCTAssert and related functions to verify your tests produce the correct
	// results.
	XCTAssertEqual(PrintMore().text, "Hello, World!")
	}*/

	func testExample() {
		printmore(.success, "Hello, World!")
		printmore(.notice, "An example notice message.", "Another message.")

		XCTAssert(true)
	}

	func testOption() {
		XCTAssertEqual(PrintMore.Option.error.rawValue, "📕 Error")
	}

	func testVar() {
		XCTAssertEqual(PrintMore.pin, "📍")
	}

	static var allTests = [
		//("testExample", testExample),
		("testOption", testOption),
		("testVar", testVar),
	]
}
