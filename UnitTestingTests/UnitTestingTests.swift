//
//  UnitTestingTests.swift
//  UnitTestingTests
//
//  Created by Oskar Larsson on 2022-11-02.
//

import XCTest
@testable import UnitTesting

class UnitTestingTests: XCTestCase {

    private var sut: Converter!
    
    override func setUpWithError() throws {
        sut = Converter()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_convert100returns99() {
        
        let sut = Converter()
        let actual = sut.convertUSD(euro: "100")
        let expected = "$99.0"
        
        XCTAssertEqual(actual, expected)
        
    }
    
    func test_convert500_return495() {
        
        let actual = sut.convertUSD(euro: "500")
        let expected = "$495.0"
        
        XCTAssertEqual(actual, expected)
        
    }

}
