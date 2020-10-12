//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/12.
//

import Foundation

extension String {
    var attributedString: NSAttributedString{
        NSAttributedString(string: self)
    }
    
    var mutableAttributedString: NSAttributedString{
        return NSMutableAttributedString(string: self)
    }
}
