//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UILabel {
    
    convenience init(_ text: String?) {
        self.init(frame: .zero)
        self.text = text
    }
    
    convenience init(_ attributedText: NSAttributedString?) {
        self.init(frame: .zero)
        self.attributedText = attributedText
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor?) -> Self {
        self.textColor = color
        return self
    }
    
    @discardableResult
    func textAlignment(_ alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func lineLimit(_ limit: Int) -> Self {
        numberOfLines = limit
        return self
    }
    
}
