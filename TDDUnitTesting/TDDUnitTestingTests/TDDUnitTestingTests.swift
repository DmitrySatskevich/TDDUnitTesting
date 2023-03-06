//
//  TDDUnitTestingTests.swift
//  TDDUnitTestingTests
//
//  Created by dzmitry on 6.03.23.
//

import XCTest
@testable import TDDUnitTesting

final class TDDUnitTestingTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        sut = ViewController()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
    
    func testTwoNumberAddition() {
        
        sut.adding(numberOne: -5, numberTwo: 5)

        let number = sut.number

        XCTAssert(number == 0, "число 1 должно отниматься от числа 2")
    }

    func testMultiplicationOfTwoNumbers() {
        sut.multiplication(numberOne: 5, numberTwo: 5)
        
        let result = sut.number
        
        XCTAssert(result == 25, "число 1 должно помножиться на число 2")
    }
    
    func testDivisionOfTwoNumbers() {
        sut.dividing(numberOne: 2, numberTwo: 4)

        let number = sut.number

        XCTAssert(number == 0, "На 0 делить нельзя")
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
