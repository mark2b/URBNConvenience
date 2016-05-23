//
//  DictionaryConvenience.swift
//  Pods
//
//  Created by Matt Thomas on 5/20/16.
//
//

import Foundation
import UIKit

public func += <Key, Value> (inout left: [Key: Value], right: [Key: Value]) {
    for (key, value) in right {
        left[key] = value
    }
}

// Excerpt From: Chris Eidhof. “Advanced Swift.” iBooks.
extension Dictionary {
    
    public mutating func urbn_mergeWithDictionary<S: SequenceType where S.Generator.Element == (Key,Value)>(other: S) {
        
        for (key,value) in other {            
            if let keyCopyable = key as? NSCopying, keyCopy = keyCopyable.copyWithZone(nil) as? Key, valCopyable = value as? NSCopying, valueCopy = valCopyable.copyWithZone(nil) as? Value {
                self.updateValue(valueCopy, forKey: keyCopy)
            }
            else {
                self.updateValue(value, forKey:key)
            }
        }
    }
}

