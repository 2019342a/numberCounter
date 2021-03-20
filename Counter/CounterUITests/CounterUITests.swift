//
//  CounterUITests.swift
//  CounterUITests
//
//  Created by Theofilos Alexiou on 17/03/2021.
//

import XCTest

class CounterUITests: XCTestCase {

    override func setUpWithError() throws {
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
    }
    
    func testLeftArrow() throws {
        // 1. given
        let app = XCUIApplication()
        app.launch()
        
        // 2. when
        app.buttons["arrow.left"].tap()
        
        // 3. then
        XCTAssertEqual(app.staticTexts.element.label, "minus one")
    }

    func testRightArrow() throws {
        // 1. given
        let app = XCUIApplication()
        app.launch()
        
        // 2. when
        app.buttons["arrow.right"].tap()
        
        // 3. then
        XCTAssertEqual(app.staticTexts.element.label, "one")
    }
}
