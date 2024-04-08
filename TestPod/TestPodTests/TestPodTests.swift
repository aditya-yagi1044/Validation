//
//  TestPodTests.swift
//  TestPodTests
//
//  Created by Aditya Tyagi on 08/04/24.
//

import XCTest
@testable import TestPod

final class TestPodTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testValidationWithInvalidMobile() {
        let model = Validation(mobileNumber: "9898765111", emailId: "aditya@test.com")
        model.validation { validate, message in
            XCTAssertFalse(validate!)
            XCTAssertNotNil(message)
        }
    }
}
