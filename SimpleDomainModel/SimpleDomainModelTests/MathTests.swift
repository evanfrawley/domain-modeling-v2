//
//  MathTests.swift
//  SimpleDomainModel
//
//  Created by Evan on 4/19/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import XCTest

 import SimpleDomainModel

class MathTests: XCTestCase {
    
    func testAdd() {
        let m1 = Money(amount: 15.0, currency: "USD")
        let m2 = Money(amount: 10.0, currency: "USD")
        let m3: Money = m1 + m2
        XCTAssert(m3.amount == 25)
    }
    
    func testSub() {
        let m1 = Money(amount: 15.0, currency: "USD")
        let m2 = Money(amount: 10.0, currency: "USD")
        let m3: Money = m1 - m2
        XCTAssert(m3.amount == 5)
    }
    
}
	