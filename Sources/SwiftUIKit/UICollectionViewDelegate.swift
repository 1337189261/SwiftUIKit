//
//  File.swift
//  
//
//  Created by chenhaoyu.1999 on 2020/10/8.
//

import UIKit

extension UICollectionView {
    var flowLayout: UICollectionViewFlowLayout {
        collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    var itemSize: CGSize {
        get {
            flowLayout.itemSize
        }
        set {
            flowLayout.itemSize = newValue
        }
    }
    
    var scrollDirection: UICollectionView.ScrollDirection {
        get {
            flowLayout.scrollDirection
        }
        set {
            flowLayout.scrollDirection = newValue
        }
    }
    
    @discardableResult
    func register<T: UICollectionViewCell>(_ cellClass: T.Type) -> Self {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
        return self
    }
    
    @discardableResult
    func dequeReusableCell<T: UICollectionViewCell>(ofClass cellClass: T.Type, for indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: String(describing: cellClass), for: indexPath) as! T
    }
    
    @discardableResult
    func target(_ target: UICollectionViewDelegate & UICollectionViewDataSource) -> Self {
        delegate = target
        dataSource = target
        return self
    }
}
