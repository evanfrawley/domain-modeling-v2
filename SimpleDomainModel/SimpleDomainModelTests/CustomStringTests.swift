//
//  CustomStringTests.swift
//  SimpleDomainModel
//
//  Created by Evan on 4/19/16.
//  Copyright © 2016 Ted Neward. All rights reserved.
//

import XCTest


 import SimpleDomainModel


class CustomStringTests: XCTestCase {
    

    func testMoney() {
        let mon = Money(amount: 15.0, currency: "USD")
        print(mon.description)
        XCTAssert(mon.description == "USD15.0")
    }
    
    func testPerson() {
        let person = Person(firstName: "Evan", lastName: "Frawley", age: 20)
        
        XCTAssert(person.description == "This person's name is Evan Frawley who is 20 years old")
    }
    
    func testJob() {
        let job = Job(title: "SDE", type: Job.JobType.Hourly(50))
        print(job.description)
        XCTAssert(job.description == "This job is SDE with pay type Hourly(50.0) and yearly pay is 100000")
    }
    
    func testFamily() {
        let person1 = Person(firstName: "Evan", lastName: "F", age: 25)
        let person2 = Person(firstName: "Maggie", lastName: "T", age: 25)
        let fam = Family(spouse1: person1, spouse2: person2)
        print(fam.description)
        XCTAssert(fam.description == "This family consists of Evan F and Maggie T  with total income being 0")
    }
    	
    
}
