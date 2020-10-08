//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UICollectionView {
    public var flowLayout: UICollectionViewFlowLayout {
        collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    public var itemSize: CGSize {
        get {
            flowLayout.itemSize
        }
        set {
            flowLayout.itemSize = newValue
        }
    }
    
    public var scrollDirection: UICollectionView.ScrollDirection {
        get {
            flowLayout.scrollDirection
        }
        set {
            flowLayout.scrollDirection = newValue
        }
    }
    
    @discardableResult
    public func register<T: UICollectionViewCell>(_ cellClass: T.Type) -> Self {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
        return self
    }
    
    @discardableResult
    public func dequeReusableCell<T: UICollectionViewCell>(ofClass cellClass: T.Type, for indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: String(describing: cellClass), for: indexPath) as! T
    }
    
    @discardableResult
    public func target(_ target: UICollectionViewDelegate & UICollectionViewDataSource) -> Self {
        delegate = target
        dataSource = target
        return self
    }
}
