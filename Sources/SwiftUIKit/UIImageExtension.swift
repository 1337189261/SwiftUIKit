//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UIImageView {
    
    convenience init(named: String) {
        self.init(frame: .zero)
        image = UIImage(named: named)
    }
    
    @discardableResult
    public func contentMode(_ mode: UIView.ContentMode) -> Self {
        contentMode = mode
        return self
    }
    
    @discardableResult
    public func imageColor(_ color: UIColor?) -> Self {
        guard let color = color else {
            return self
        }
        tintColor = color
        image = image?.withRenderingMode(.alwaysTemplate)
        return self
    }
}
