import CoreGraphics

public struct Circle : Drawable {
    public var fillColor : Color = RGBA(0, 0, 0, 0)
    public var strokeColor : Color = RGBA(0, 0, 0, 1)
    public init(center:CGPoint, radius:CGFloat) {
        self.center = center
        self.radius = radius
    }
    public func draw(renderer: Renderer) {
        print("  Circle")
        renderer.setFill(fillColor)
        renderer.setStroke(strokeColor)
        renderer.moveTo(center)
        renderer.arcAt(center, radius: radius)
    }

    let center : CGPoint
    let radius : CGFloat

//    public func debugQuickLookObject() -> UIView {
//        let canvas = Canvas(frame: CGRectMake(0, 0, radius*2, radius*2))
//        canvas.drawable = self
//        return canvas
//    }
}
