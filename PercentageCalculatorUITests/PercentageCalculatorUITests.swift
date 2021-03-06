//
//  PercentageCalculatorUITests.swift
//  PercentageCalculatorUITests
//
//  Created by Brian Ledbetter on 8/15/16.
//  Copyright © 2016 App Coda. All rights reserved.
//

import XCTest

class PercentageCalculatorUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUI() {
        
        let app = XCUIApplication()
        let percentageCalculatorElementsQuery = app.otherElements.containingType(.StaticText, identifier:"Percentage Calculator")
        percentageCalculatorElementsQuery.childrenMatchingType(.Slider).matchingIdentifier("50%").elementBoundByIndex(0).tap()
        app.sliders["50%"].tap()
        percentageCalculatorElementsQuery.childrenMatchingType(.Slider).matchingIdentifier("0%").elementBoundByIndex(1).tap()
        app.sliders["0%"].tap()
        percentageCalculatorElementsQuery.childrenMatchingType(.Slider).matchingIdentifier("10%").elementBoundByIndex(1).tap()
        app.sliders["10%"].tap()
        app.sliders["40%"].tap()
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
