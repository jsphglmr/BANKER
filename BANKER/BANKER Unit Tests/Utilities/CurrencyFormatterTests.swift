//
//  CurrencyFormatterTests.swift
//  BANKER Unit Tests
//
//  Created by Joseph Gilmore on 10/8/22.
//

import Foundation
import XCTest

@testable import Banked_Up

class Test: XCTestCase {
    var formatter: CurrencyFormatter!
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func testShouldBeVisible() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466)
        XCTAssertEqual(result, "$929,466.00")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0)
        XCTAssertEqual(result, "$0.00")
    }
    
    func testCentsOnlyFormatted() throws {
        let result = formatter.dollarsFormatted(0.01)
        XCTAssertEqual(result, "$0.01")
    }
}
