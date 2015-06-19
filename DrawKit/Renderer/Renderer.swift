import Foundation

public protocol Renderer {
    func drawRect(rect: CGRect)
    func moveTo(point: CGPoint)
    func lineTo(point: CGPoint)
    func commitPath()
    func arcAt(center: CGPoint, radius: CGFloat)
    func setFill(color: Color)
    func setStroke(color: Color)
}

public struct LogRenderer : Renderer {
    public init() {

    }
    public func drawRect(rect: CGRect) {
        print("   drawRect: \(rect)")
    }
    public func moveTo(point: CGPoint) {
        print("   moveTo: \(point)")
    }
    public func lineTo(point: CGPoint) {
        print("   lineTo: \(point)")
    }
    public func commitPath() {
        print("   commitPath")
    }
    public func arcAt(center: CGPoint, radius: CGFloat) {
        print("   arcAt: center:\(center), radius:\(radius)")
    }
    public func setFill(color: Color) {
        print("   setFill: \(color)")
    }
    public func setStroke(color: Color) {
        print("   setStroke: \(color)")
    }
}
