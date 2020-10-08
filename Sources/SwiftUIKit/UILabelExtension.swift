//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UILabel {
    
    public convenience init(_ text: String?) {
        self.init(frame: .zero)
        self.text = text
    }
    
    public convenience init(_ attributedText: NSAttributedString?) {
        self.init(frame: .zero)
        self.attributedText = attributedText
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    public func textColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }
    
    @discardableResult
    public func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func lineLimit(_ limit: Int) -> Self {
        numberOfLines = limit
        return self
    }
    
}
