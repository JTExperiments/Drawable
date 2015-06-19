import CoreGraphics

extension CGContext : Renderer {

    public func drawRect(rect: CGRect) {
        CGContextStrokeRect(self, rect)
        CGContextFillRect(self, rect)
    }

    public func moveTo(point: CGPoint) {
        CGContextMoveToPoint(self, point.x, point.y)
    }

    public func lineTo(point: CGPoint) {
        CGContextAddLineToPoint(self, point.x, point.y)
    }

    public func arcAt(center: CGPoint, radius: CGFloat) {
        let rect = CGRectMake(center.x - radius, center.y - radius, radius * 2, radius * 2)
        CGContextStrokeEllipseInRect(self, rect)
        CGContextFillEllipseInRect(self, rect)
    }

    public func commitPath() {
        CGContextSetLineWidth(self, 1)
        CGContextFillPath(self)
        CGContextStrokePath(self)
    }

    public func setFill(color: Color) {
        CGContextSetFillColorWithColor(self, color.CGColor)
    }

    public func setStroke(color: Color) {
        CGContextSetStrokeColorWithColor(self, color.CGColor)
    }

}