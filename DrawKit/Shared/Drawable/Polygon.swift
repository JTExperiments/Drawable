import CoreGraphics

public struct Polygon : Drawable {
    public var fillColor : Color = RGBA(0, 0, 0, 0)
    public var strokeColor : Color = RGBA(0, 0, 0, 1)
    public init(startPoint:CGPoint, endPoint:CGPoint) {
        self.startPoint = startPoint
        self.endPoint = endPoint
    }
    public func draw(renderer: Renderer) {
        print("  Polygon")
        renderer.setFill(fillColor)
        renderer.setStroke(strokeColor)
        renderer.drawRect(self.rect)
    }

    let startPoint : CGPoint
    let endPoint : CGPoint
    var midPoint1 : CGPoint {
        return CGPointMake(startPoint.x, endPoint.y)
    }
    var midPoint2 : CGPoint {
        return CGPointMake(endPoint.x, startPoint.y)
    }
    var rect : CGRect {
        return CGRectMake(startPoint.x, startPoint.y, endPoint.x - startPoint.x, endPoint.y - startPoint.y)
    }
//    public func debugQuickLookObject() -> UIView {
//        let canvas = Canvas(frame: CGRectMake(startPoint.x, startPoint.y, endPoint.x, endPoint.y))
//        canvas.drawable = self
//        return canvas
//    }
}
