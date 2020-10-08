//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UIScrollView {
    @available(iOS 11.0, *)
    @discardableResult
    func contentInsetAdjustmentBehavior(_ behavior: ContentInsetAdjustmentBehavior) -> Self {
        contentInsetAdjustmentBehavior = behavior
        return self
    }
    
    @discardableResult
    func contentOffset(x: CGFloat, y: CGFloat) -> Self {
        contentOffset = CGPoint(x: x, y: y)
        return self
    }
    
    @discardableResult
    func contentSize(width: CGFloat, height: CGFloat) -> Self {
        contentSize = CGSize(width: width, height: height)
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate) -> Self {
        self.delegate = delegate
        return self
    }
    
    @discardableResult
    func bounce(_ bool: Bool) -> Self {
        self.bounces = bool
        return self
    }
    
    @discardableResult
    func contenInset(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> Self {
        contentInset = UIEdgeInsets(top: top, left: left, bottom: bottom, right: right)
        return self
    }
}
