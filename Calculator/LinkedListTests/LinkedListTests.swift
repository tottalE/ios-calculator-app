//
//  LinkedListTests.swift
//  LinkedListTests
//
//  Created by jin on 9/19/22.
//

import XCTest
@testable import Calculator
class LinkedListTests: XCTestCase {
    var sut: LinkedList!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LinkedList()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sut = nil
    }

    func test_linkedList_push_3_then_head_and_tail_is_3() {
        sut.push("3")
        
        XCTAssertEqual(sut.head?.value, sut.tail?.value)
        XCTAssertEqual(sut.head?.value, "3")
    }

    func test_linkedlist_append_4_then_tail_is_4() {
        sut.push("3")
        sut.append("4")
        
        XCTAssertEqual(sut.tail?.value, "4")
    }
    
    func test_linkedlist_append_4_when_there_is_no_head() {
        
        sut.append("4")
        
        XCTAssertEqual(sut.tail?.value, "4")
        XCTAssertEqual(sut.head?.value, "4")

    }
}