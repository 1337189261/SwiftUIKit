//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/12.
//

import UIKit
enum VerticalAlignment {
    case bottom, center, firstTextBaseline, lastTextBaseline, top
    var alignment: UIStackView.Alignment {
        switch self {
        case .bottom:
            return .bottom
        case .center:
            return .center
        case .firstTextBaseline:
            return .firstBaseline
        case .lastTextBaseline:
            return .lastBaseline
        case .top:
            return .top
        }
    }
}

class HStack: UIStackView {
    
    init(alignment: VerticalAlignment, spacing: CGFloat = 0, content: () -> [UIView]) {
        super.init(frame: .zero)
        self.axis = .horizontal
        self.alignment = alignment.alignment
        self.spacing = spacing
        let _ = content().map { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

