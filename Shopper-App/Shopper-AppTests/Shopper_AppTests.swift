//
//  Shopper_AppTests.swift
//  Shopper-AppTests
//
//  Created by Kafkas Baranseli on 10/05/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import XCTest

class Shopper_AppTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    // 013 XCTAccert test. Btw to call the function from Wage.swift, wo to that open right pane, select the test on file inspector
    func testGetHours () {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 250.53) == 17)
    }
    
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
