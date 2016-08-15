//
//  PercentageCalculatorTests.swift
//  PercentageCalculatorTests
//
//  Created by Maxime Defauw on 03/02/16.
//  Copyright © 2016 App Coda. All rights reserved.
//

import XCTest
@testable import PercentageCalculator

class PercentageCalculatorTests: XCTestCase {
    var vc : ViewController!
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        self.vc = storyboard.instantiateInitialViewController() as! ViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testPercentageCalculator() {
        let p = self.vc.percentage(50, 50)
        XCTAssert(p == 25)
    }
        
    func testLabelValuesShowedProperly() {
        // access the view property of a viewcontroller to insure it is initialized (do not call loadView)
        let _ = self.vc.view
        
        self.vc.updateLabels(Float(80.0), Float(50.0), Float(40.0))
        XCTAssert(self.vc.numberLabel.text == "80.0", "The numberLabel.vc is not showing the right text.")
        XCTAssert(self.vc.percentageLabel.text == "50.0%", "percentageLabel doesn't show the right text")
        XCTAssert(self.vc.resultLabel.text == "40.0", "The resultLabel is not showing the right number")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
}
