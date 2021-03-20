//
//  CounterTests.swift
//  CounterTests
//
//  Created by Theofilos Alexiou on 17/03/2021.
//

import XCTest
@testable import Counter

class CounterTests: XCTestCase {

    func testModelIncrement() throws {
        // 1. given
        let model = Model(value: 5)
        
        // 2. when
        let incrementedModel = model.increment
        
        // 3. then
        XCTAssertEqual(incrementedModel.value, 6)
    }
    
    func testModelDecrement() throws {
        // 1. given
        let model = Model(value: 8)
        
        // 2. when
        let incrementedModel = model.decrement
        
        // 3. then
        XCTAssertEqual(incrementedModel.value, 7)
    }
    
    func testControllerIncrement() throws {
        // 1. given
        let controller = ContentViewController()
        
        // 2. when
        controller.increment()
        
        // 3. then
        XCTAssertEqual(controller.currentValue, 1)
    }
    
    func testControllerDecrement() throws {
        // 1. given
        let controller = ContentViewController()
        
        // 2. when
        controller.decrement()
        
        // 3. then
        XCTAssertEqual(controller.currentValue, -1)
    }
}
