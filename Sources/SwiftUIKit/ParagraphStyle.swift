//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension NSMutableParagraphStyle {
    
    @discardableResult
    public func lineHeight(_ height: CGFloat) -> Self {
        maximumLineHeight = height
        minimumLineHeight = height
        return self
    }
    
}
