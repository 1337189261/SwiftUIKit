//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension CGPoint {
    static let top = CGPoint(x: 0.5, y: 0)
    static let bottom = CGPoint(x: 0.5, y: 1)
    static let leading = CGPoint(x: 0, y: 0.5)
    static let trailing = CGPoint(x: 1, y: 0.5)
}


public class LinearGradient: UIView {
    public override class var layerClass: AnyClass {
        CAGradientLayer.self
    }
    
    public override var layer: CAGradientLayer {
        super.layer as! CAGradientLayer
    }
    
    public init(colors: [UIColor], locations: [CGFloat], startPoint: CGPoint, endPoint: CGPoint) {
        super.init(frame: .zero)
        layer.colors = colors.map {$0.cgColor}
        layer.locations = locations.map {NSNumber(value: Double($0))}
        layer.startPoint = startPoint
        layer.endPoint = endPoint
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
