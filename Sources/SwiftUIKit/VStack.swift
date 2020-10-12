//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/12.
//

import UIKit
enum HorizontalAlignment {
    case center, leading, trailing
    var alignment: UIStackView.Alignment {
        switch self {
        case .center:
            return .center
        case .leading:
            return .leading
        case .trailing:
            return .trailing
        }
    }
}

class VStack: UIStackView {
    
    init(alignment: HorizontalAlignment, spacing: CGFloat = 0, content: () -> [UIView]) {
        super.init(frame: .zero)
        self.axis = .vertical
        self.alignment = alignment.alignment
        self.spacing = spacing
        let _ = content().map { addArrangedSubview($0) }
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
