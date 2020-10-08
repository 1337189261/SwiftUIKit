//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UITableView {
    
    @discardableResult
    func register<T: UITableViewCell>(_ cellClass: T.Type) -> Self {
        register(cellClass, forCellReuseIdentifier: String(describing: cellClass))
        return self
    }
    
    @discardableResult
    func dequeReusableCell<T: UITableViewCell>(ofClass cellClass: T.Type) -> T {
        dequeueReusableCell(withIdentifier: String(describing: cellClass)) as! T
    }
    
    @discardableResult
    func dequeReusableCell<T: UITableViewCell>(ofClass cellClass: T.Type, for indexPath: IndexPath) -> T {
        dequeueReusableCell(withIdentifier: String(describing: cellClass), for: indexPath) as! T
    }
    
    @discardableResult
    func target(_ target: UITableViewDelegate & UITableViewDataSource) -> Self {
        delegate = target
        dataSource = target
        return self
    }
    
}
