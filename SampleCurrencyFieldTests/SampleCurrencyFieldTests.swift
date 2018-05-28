//
//  SampleCurrencyFieldTests.swift
//  SampleCurrencyFieldTests
//
//  Created by DB MAC MINI on 5/28/18.
//  Copyright © 2018 DB MAC MINI. All rights reserved.
//

import XCTest
@testable import SampleCurrencyField
class SampleCurrencyFieldTests: XCTestCase {
    var sut : CurrencyTextField!
    override func setUp() {
        super.setUp()
        sut = CurrencyTextField()
        sut.currencySymbol = "£"
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCurrencySymbole(){
        sut.currencySymbol = "$"
        XCTAssertEqual(sut.currencySymbol, "$")
    }
    
    func testCurrenyFieldShouldDiscardTextValue(){
        let testableString = "a"
        
        sut.text = testableString
        sut.textFieldDidChange(sut)
        XCTAssertEqual(sut.text,  "£ 0")
    }
    
    func testTextField_ShouldConvertIntegerTextToInteger(){
        let testableString = "20"
       
        sut.text = testableString
        sut.textFieldDidChange(sut)
        XCTAssertEqual(sut.text,  "£ 20")

    }
    
    func testAddTextInputInAlreadyAddedIntgerInput()
    {
        var testableString = "20"
      
        sut.text = testableString
        sut.textFieldDidChange(sut)
        XCTAssertEqual(sut.text,  "£ 20")
        
        testableString = "20abc"
        sut.text = testableString
        sut.textFieldDidChange(sut)
        XCTAssertEqual(sut.text,  "£ 20")
    }
    
    func testAddEmptyString()
    {
        let testableString = ""
       
        sut.text = testableString
        sut.textFieldDidChange(sut)
        XCTAssertEqual(sut.text,  "£ 0")
        
       
    }
}
