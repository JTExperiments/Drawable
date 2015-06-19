import CoreGraphics

public struct Diagram : Drawable {
    public var fillColor : Color = RGBA(0, 0, 0, 0)
    public var strokeColor : Color = RGBA(0, 0, 0, 1)
    public init(rect: CGRect, drawables: [Drawable]) {
        self.drawables = drawables
        self.rect = rect
    }

    public func draw(renderer: Renderer) {
        print("Diagram")
        renderer.setFill(fillColor)
        renderer.setStroke(strokeColor)
        renderer.drawRect(rect)
        for drawable in self.drawables {
            drawable.draw(renderer)
        }
    }
    let rect : CGRect
    let drawables : [Drawable]
}
