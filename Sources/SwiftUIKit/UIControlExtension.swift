//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UIControl {
    
    private static var _controlActionTargetKey = "_UIControlActionTargetKey"
    
    private var _controlTargets: NSMutableArray {
        getAssociatedObject(key: &Self._controlActionTargetKey, defaultValue: NSMutableArray())
    }
    
    public typealias Action = () -> Void
    
    @discardableResult
    public func setAction(_ action: @escaping Action, for controlEvents: Event) -> Self {
        let target = _UIActionTarget(action: action)
        addTarget(target, action: #selector(_UIActionTarget.invoke), for: controlEvents)
        _controlTargets.add(target)
        return self
    }
    
}

internal class _UIActionTarget: NSObject {
    
    let action: UIControl.Action
    
    init(action: @escaping UIControl.Action) {
        self.action = action
    }
    
    @objc func invoke() {
        action()
    }
}
