//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import Foundation

extension NSObject {
    func getAssociatedObject<Value>(key: UnsafeRawPointer, defaultValue: Value, policy: objc_AssociationPolicy = .OBJC_ASSOCIATION_RETAIN_NONATOMIC) -> Value {
        var value = objc_getAssociatedObject(self, key)
        if value == nil {
            value = defaultValue
            objc_setAssociatedObject(self, key, value, policy)
        }
        return value as! Value
    }
}
