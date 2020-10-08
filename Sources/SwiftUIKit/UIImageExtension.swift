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
    func contentMode(_ mode: UIView.ContentMode) -> Self {
        contentMode = mode
        return self
    }
    
    @discardableResult
    func imageColor(_ color: UIColor) -> Self {
        tintColor = color
        image = image?.withRenderingMode(.alwaysTemplate)
        return self
    }
}
