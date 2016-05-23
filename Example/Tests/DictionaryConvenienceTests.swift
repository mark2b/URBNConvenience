//
//  DictionaryConvenienceTests.swift
//  URBNConvenience
//
//  Created by Matt Thomas on 5/20/16.
//  Copyright © 2016 jgrandelli. All rights reserved.
//

import XCTest
import URBNConvenience

class DictionaryConvenienceTests: XCTestCase {

    func testCombineSameDictionary() {
        var foo = ["Hello": 1234]
        let bar = ["World": 5678]
        foo += bar
        XCTAssert(foo["Hello"] == 1234)
        XCTAssert(foo["World"] == 5678)
        XCTAssert(foo.keys.count == 2)
    }

    func testCombineSameDictionaryKeysOverride() {
        var foo = ["Hello": 1234]
        let bar = ["Hello": 9876]
        foo += bar
        XCTAssert(foo["Hello"] == 9876)
        XCTAssert(foo.keys.count == 1)
    }
    
    func testMergeDiffDictionary() {
        var foo = ["Hi": 1234]
        let bar = ["There": 9876]
        foo.urbn_mergeWithDictionary(bar)
        XCTAssert(foo["There"] == 9876)
        XCTAssert(foo.keys.count == 2)
    }
    
    func testDeepCopyWithObjectsInDictionary() {
        let test1 = TestClass(theStuff: "TestOneStuff")
        let test2 = TestClass(theStuff: "TestTwoStuff")
        var foo = ["Hello": test1]
        let bar = ["World": test2]
        foo.urbn_mergeWithDictionary(bar)
        
        if let foosWorld = foo["World"], barsWorld = bar["World"] {
            XCTAssertFalse(foosWorld === barsWorld)
        }
        else {
            XCTFail("Failed to create copies, the references will be the same")
        }
    }

}

class TestClass: NSObject, NSCopying {
    var stuff: String?
    
    init(theStuff: String?) {
        stuff = theStuff
    }
    
    func copyWithZone(zone: NSZone) -> AnyObject {
        let copy = TestClass(theStuff: self.stuff)
        return copy
    }
}
