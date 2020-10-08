//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit
public class RoundedCornerView: UIView {
    
    private var roundingCorner: UIRectCorner = UIRectCorner.allCorners
    private var cornerRadii: CGFloat = 0
    
    public init(roundingCorner: UIRectCorner, cornerRadii: CGFloat) {
        super.init(frame: .zero)
        self.roundingCorner = roundingCorner
        self.cornerRadii = cornerRadii
    }
    
    public override func draw(_ rect: CGRect) {
        let bezierPath = UIBezierPath(roundedRect: rect, byRoundingCorners: roundingCorner, cornerRadii: CGSize(width: cornerRadii, height: cornerRadii))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = rect
        maskLayer.path = bezierPath.cgPath
        layer.mask = maskLayer
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
