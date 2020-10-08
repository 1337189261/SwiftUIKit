//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension NSMutableAttributedString {
    
    @discardableResult
    func foregroundColor(_ color: UIColor) -> Self {
        addAttributes([.foregroundColor: color], range: NSRange(location: 0, length: string.count))
        return self
    }
    
    @discardableResult
    func foregroundColor(_ color: UIColor, loc: Int, len: Int) -> Self {
        addAttributes([.foregroundColor: color], range: NSRange(location: loc, length: len))
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Self {
        addAttributes([.font: font], range: NSRange(location: 0, length: string.count))
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont, loc: Int, len: Int) -> Self {
        addAttributes([.font: font], range: NSRange(location: loc, length: len))
        return self
    }
    
    @discardableResult
    func baselineOffset(_ offset: CGFloat) -> Self {
        addAttributes([.baselineOffset: NSNumber(value: Double(offset))], range: NSRange(location: 0, length: string.count))
        return self
    }
    
    @discardableResult
    func baselineOffset(_ offset: CGFloat, loc: Int, len: Int) -> Self {
        addAttributes([.baselineOffset: NSNumber(value: Double(offset))], range: NSRange(location: loc, length: len))
        return self
    }
    
    @discardableResult
    func kern(_ kern: CGFloat) -> Self {
        addAttributes([.kern: NSNumber(value: Double(kern))], range: NSRange(location: 0, length: string.count))
        return self
    }
    
    @discardableResult
    func kern(_ kern: CGFloat, loc: Int, len: Int) -> Self {
        addAttributes([.kern: NSNumber(value: Double(kern))], range: NSRange(location: loc, length: len))
        return self
    }
    
    @discardableResult
    func lineHeight(_ height: CGFloat) -> Self {
        addAttributes([.paragraphStyle: paragraphStyle.lineHeight(height)], range: NSRange(location: 0, length: string.count))
        return self
    }
    
    @discardableResult
    func lineHeight(_ height: CGFloat, loc: Int, len: Int) -> Self {
        addAttributes([.paragraphStyle: paragraphStyle.lineHeight(height)], range: NSRange(location: loc, length: len))
        return self
    }
    
    static var paragraphStyleKey = "ParagraphStyleKey"
    
    var paragraphStyle: NSMutableParagraphStyle {
        getAssociatedObject(key: &NSMutableAttributedString.paragraphStyleKey, defaultValue: NSMutableParagraphStyle())
    }
}
