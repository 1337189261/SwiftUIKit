import UIKit
import SnapKit
extension UIView {
    
    @discardableResult
    func addTo(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
    
    @discardableResult
    func background(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    func cornerRadius(_ radius: CGFloat, maskToBounds: Bool = true) -> Self {
        layer.cornerRadius = radius
        layer.masksToBounds = maskToBounds
        return self
    }
    
    @discardableResult
    func layout(_ maker: (ConstraintMaker) -> Void) -> Self {
        snp.makeConstraints(maker)
        return self
    }
    
    @discardableResult
    func frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> Self {
        frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    func content(_ content: (UIView) -> Void) -> Self {
        content(self)
        return self
    }
    
    
}



