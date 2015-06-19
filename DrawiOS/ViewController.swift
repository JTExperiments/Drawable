//
//  ViewController.swift
//  DrawiOS
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import UIKit
import DrawKit

class ViewController: UIViewController {

    var drawable : Drawable? {
        didSet {
            self.drawableView.drawable = drawable
        }
    }
    @IBOutlet weak var drawableView: DrawableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        var rect = Polygon(startPoint: CGPointMake(25, 25), endPoint: CGPointMake(75, 75))
        rect.fillColor = RGBA(1, 0, 0, 1)
        rect.strokeColor = RGBA(1, 1, 1, 1)

        var circle = Circle(center: CGPointMake(50, 50), radius: 49)
        circle.fillColor = GRAY(1, 1)

        var triangle = Triangle(startPoint: CGPointMake(25, 25), endPoint: CGPointMake(75, 50))
        triangle.fillColor = RGBA(0.3, 0.3, 0.3, 1)

        var triangle2 = Triangle(startPoint: CGPointMake(25, 75), endPoint: CGPointMake(75, 50))
        triangle2.fillColor = RGBA(0, 1, 0, 1)

        let diagram = Diagram(rect: view.bounds, drawables: [
            circle, rect, triangle, triangle2
            ])
        diagram.draw(LogRenderer())
        self.drawable = diagram
    }

}

