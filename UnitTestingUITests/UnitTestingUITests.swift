//
//  UnitTestingUITests.swift
//  UnitTestingUITests
//
//  Created by Oskar Larsson on 2022-11-02.
//

import XCTest

class UnitTestingUITests: XCTestCase {

    func test_make_sure_errorlabel_displayed() {
        
        let app = XCUIApplication()
        app.launch()
        let convertButton = app.buttons["convertButton"]
        convertButton.tap()
        
        let errorMessage = app.staticTexts["errorMessage"]
        
        XCTAssert(errorMessage.exists)
        
    }
   
}
