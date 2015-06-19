//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import DrawKit

/*:

# Drawable

Following WWDC 2015 Protocol-Oriented Programming

*/

let view = DrawableView(frame: CGRectMake(0, 0, 100, 100))
view.backgroundColor = UIColor.whiteColor()

var rect = Polygon(startPoint: CGPointMake(25, 25), endPoint: CGPointMake(75, 75))
rect.fillColor = RGBA(1, 0, 0, 1)
rect.strokeColor = RGBA(1, 1, 1, 1)

var circle = Circle(center: CGPointMake(50, 50), radius: 49)
circle.fillColor = GRAY(1, 1)
circle.strokeColor = GRAY(0, 1)


var triangle = Triangle(startPoint: CGPointMake(25, 25), endPoint: CGPointMake(75, 50))
triangle.fillColor = RGBA(0.3, 0.3, 0.3, 1)

var triangle2 = Triangle(startPoint: CGPointMake(25, 75), endPoint: CGPointMake(75, 50))
triangle2.fillColor = RGBA(0, 1, 0, 1)


let diagram = Diagram(rect: view.bounds, drawables: [
    circle, rect, triangle, triangle2
    ])
diagram.draw(LogRenderer())
view.drawable = diagram


XCPShowView("drawable", view: view)
XCPExecutionShouldContinueIndefinitely()
