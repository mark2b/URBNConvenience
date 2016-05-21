//
//  DictionaryConvenience.swift
//  Pods
//
//  Created by Matt Thomas on 5/20/16.
//
//

import Foundation

public func += <Key, Value> (inout left: [Key: Value], right: [Key: Value]) {
    for (key, value) in right {
        left[key] = value
    }
}

// Excerpt From: Chris Eidhof. “Advanced Swift.” iBooks.
public extension Dictionary {
    public mutating func urbn_mergeWithDictionary<S: SequenceType where S.Generator.Element == (Key,Value)>(other: S) {
        for (k, v) in other {
            self[k] = v
        }
    }
}
