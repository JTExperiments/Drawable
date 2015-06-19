import CoreGraphics

public struct Triangle : Drawable {
    public var fillColor : Color = RGBA(0, 0, 0, 0)
    public var strokeColor : Color = RGBA(0, 0, 0, 1)
    public init(startPoint: CGPoint, endPoint:CGPoint) {
        self.startPoint = startPoint
        self.endPoint = endPoint
    }
    public func draw(renderer: Renderer) {
        print("  Triangle")
        renderer.setFill(fillColor)
        renderer.setStroke(strokeColor)
        renderer.moveTo(firstPoint)
        renderer.lineTo(secondPoint)
        renderer.lineTo(thirdPoint)
        renderer.lineTo(firstPoint)
        renderer.commitPath()
    }

    let startPoint: CGPoint
    let endPoint: CGPoint
    var firstPoint : CGPoint {
        return startPoint
    }
    var secondPoint : CGPoint {
        return CGPointMake(endPoint.x, startPoint.y)
    }
    var thirdPoint : CGPoint {
        return CGPointMake((endPoint.x + startPoint.x) / 2, endPoint.y)
    }
//    public func debugQuickLookObject() -> UIView {
//        let canvas = Canvas(frame: CGRectMake(startPoint.x, startPoint.y, endPoint.x, endPoint.y))
//        canvas.drawable = self
//        return canvas
//    }
}
