//
//  ExtensionTests.swift
//  SimpleDomainModel
//
//  Created by Evan on 4/19/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import XCTest

 import SimpleDomainModel

class ExtensionTests: XCTestCase {
    //make monies into USD, EUR, CAN, GBP, and then do some shit with them
    func testUSD() {
        let val = 15.0
        let money = val.USD
        XCTAssert(money.currency == "USD")
    }
    
    func testEUR() {
        let val = 15.0
        let money = val.EUR
        XCTAssert(money.currency == "EUR")
    }
    
    func testGBP() {
        let val = 15.0
        let money = val.GBP
        XCTAssert(money.currency == "GBP")
    }
    
    func testCAN() {
        let val = 15.0
        let money = val.CAN
        XCTAssert(money.currency == "CAN")
    }
}
