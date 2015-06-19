//
//  DrawableView.swift
//  Draw
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

#if os(iOS)

import UIKit

public class DrawableView : UIView {

    public var drawable : Drawable? {
        didSet {
            self.setNeedsDisplay()
        }
    }

    public override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        let context = UIGraphicsGetCurrentContext()
        if let drawable = drawable {
            drawable.draw(context)
        }
    }
}

#endif
