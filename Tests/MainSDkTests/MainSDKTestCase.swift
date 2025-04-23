//
//  MainSDKTestCase.swift
//  MainSDk
//
//  Created by SV on 23/04/25.
//

import XCTest
@testable import MainSDk

final class MainSDKTestCase: XCTestCase {

    public var cal: Calculator!
    
    override func setUpWithError() throws {
        cal = Calculator()
        cal.a = 10
        cal.b = 20
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        cal = nil
    }

    func testADD() throws {
        XCTAssertEqual(cal.add(), 30, "Resultis correct")
        XCTAssertNotEqual(cal.dif(), 10, "result is not correct")
        XCTAssertNoThrow(try cal.div(), "Not throw anyerror")
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
