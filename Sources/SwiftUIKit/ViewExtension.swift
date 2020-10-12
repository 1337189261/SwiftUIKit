import UIKit
import SnapKit
extension UIView {
    
    @discardableResult
    public func addTo(_ view: UIView) -> Self {
        view.addSubview(self)
        return self
    }
    
    @discardableResult
    public func background(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    public func background(_ image: UIImage, contentMode: ContentMode = .scaleAspectFit, color: UIColor? = nil) -> Self {
        UIImageView(image: image)
            .addTo(self)
            .layout { (make) in
                make.edges.equalToSuperview()
            }
            .contentMode(contentMode)
            .imageColor(color)
        return self
    }
    
    @discardableResult
    public func cornerRadius(_ radius: CGFloat, maskToBounds: Bool = true) -> Self {
        layer.cornerRadius = radius
        layer.masksToBounds = maskToBounds
        return self
    }
    
    @discardableResult
    public func layout(_ maker: (ConstraintMaker) -> Void) -> Self {
        snp.makeConstraints(maker)
        return self
    }
    
    @discardableResult
    public func frame(x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat) -> Self {
        frame = CGRect(x: x, y: y, width: width, height: height)
        return self
    }
    
    @discardableResult
    public func content(_ content: (UIView) -> Void) -> Self {
        content(self)
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat, color: UIColor?) -> Self {
        layer.borderWidth = width
        layer.borderColor = color?.cgColor
        return self
    }
    
    private static var _ActionTargetKey = "_UIControlActionTargetKey"
    
    private var _targets: NSMutableArray {
        getAssociatedObject(key: &Self._ActionTargetKey, defaultValue: NSMutableArray())
    }
    
    @discardableResult
    public func onTapGesture(_ closure: @escaping () -> Void, configTap: (( UITapGestureRecognizer?) -> Void)? = nil) -> Self {
        let target = _UIActionTarget(action: closure)
        let tap = UITapGestureRecognizer(target: target, action: #selector(_UIActionTarget.invoke))
        configTap?(tap)
        addGestureRecognizer(tap)
        _targets.add(target)
        return self
    }
    
    @discardableResult
    public func shadow(color: UIColor?, opacity: CGFloat, blur: CGFloat, x: CGFloat, y: CGFloat) -> Self {
        layer.masksToBounds = false
        layer.shadowColor = color?.cgColor
        layer.shadowOffset = CGSize(width: x, height: y)
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shadowRadius = blur / 2
        layer.shadowOpacity = Float(opacity)
        return self
    }
    
    @discardableResult
    public func padding(_ edgeInsets: UIEdgeInsets) -> UIView {
        let paddingView = UIView()
        addTo(paddingView)
        layout { (make) in
            make.top.equalToSuperview().offset(edgeInsets.top)
            make.leading.equalToSuperview().offset(edgeInsets.left)
            make.bottom.equalToSuperview().offset(-edgeInsets.bottom)
            make.trailing.equalToSuperview().offset(-edgeInsets.right)
        }
        return paddingView
    }
}



