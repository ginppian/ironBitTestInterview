//
//  testTests.swift
//  testTests
//
//  Created by Gmo Ginppian on 5/23/19.
//  Copyright © 2019 ginppian. All rights reserved.
//

import XCTest
@testable import testIronbit

class testTests: XCTestCase {
    
    weak var validateTextInputDelegate: IBValidateTextInputDelegate?
    weak var modifyTextDelegate: IBModifyTextDelegate?
    var present = IBPresenter()
    
    override func setUp() {
        
        validateTextInputDelegate = present
        modifyTextDelegate = present
    }
    
    override func tearDown() {
        validateTextInputDelegate = nil
        modifyTextDelegate = nil
    }
    
    // ### --- Success --- ###
    func test1_Modify() {
        let mock = "1234567890"
        let r = modifyTextDelegate?.modify(s: mock)
        XCTAssertEqual(r, "1029384756")
    }
    
    // ### --- Success --- ###
    func test1_Valid() {
        let mock = "1234567890"
        let r = validateTextInputDelegate?.valid(mock) ?? false
        XCTAssert(r)
    }
    
    // ### --- Bad Mock --- ###
    func test2_Valid() {
        let mock = "12344321"
        let r = validateTextInputDelegate?.valid(mock) ?? false
        XCTAssert(r == false)
    }
    
}
