//
//  DrawableView.swift
//  Draw
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Cocoa

class DrawableView: NSView {
    var drawable : Drawable?
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        if let context = NSGraphicsContext.currentContext()?.CGContext {
            if let drawable = drawable {
                drawable.draw(context)
            }
        }
    }

    override var flipped : Bool {
        return true
    }
}
