//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

public class Color: UIView {
    public init(_ color: UIColor) {
        super.init(frame: .zero)
        background(color)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
