//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UIControl {
    
    private static var _controlActionTargetKey = "_UIControlActionTargetKey"
    
    private var _targets: NSMutableArray {
        getAssociatedObject(key: &Self._controlActionTargetKey, defaultValue: NSMutableArray())
    }
    
    typealias Action = () -> Void
    
    @discardableResult
    func action(_ action: @escaping Action, for controlEvents: Event) -> Self {
        let target = _UIControlActionTarget(action: action, controlEvents: controlEvents)
        addTarget(target, action: #selector(_UIControlActionTarget.invoke), for: controlEvents)
        _targets.add(target)
        return self
    }
    
}

private class _UIControlActionTarget: NSObject {
    
    let action: UIControl.Action
    let controlEvents: UIControl.Event
    
    init(action: @escaping UIControl.Action, controlEvents: UIControl.Event) {
        self.action = action
        self.controlEvents = controlEvents
    }
    
    @objc func invoke() {
        action()
    }
}
