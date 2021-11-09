import XCTest
@testable import xcresulttool_example

class xcresulttool_exampleTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.

        let vc = ViewController()
        vc.viewDidLoad()
    }

    func testAttachments() throws {
        do {
            let attachment = XCTAttachment(string: "Test Attachment")
            attachment.lifetime = .keepAlways
            add(attachment)
        }
        do {
            let attachment = XCTAttachment(data: "Test Attachment".data(using: .utf8)!, uniformTypeIdentifier: "public.png")
            attachment.lifetime = .keepAlways
            add(attachment)
        }
    }

    func testFail() throws {
        let expect = "success"
        XCTAssertEqual(expect, "success")
        XCTAssertEqual(expect, "fail")
    }

    func testSkip() throws {
        let expect = "success"
        XCTAssertEqual(expect, "success")
        XCTAssertEqual(expect, "fail")
        throw XCTSkip("This test was skipped")
    }

    func testExpedtedFailures() {
        XCTExpectFailure("Failure expected till we fix #123")
        
        let expect = "success"
        XCTAssertEqual(expect, "success")
        XCTAssertEqual(expect, "fail")
    }
}
