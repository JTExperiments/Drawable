//
//  DrawableView.swift
//  Draw
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

#if !os(iOS)

import Cocoa

public class DrawableView: NSView {

    public var drawable : Drawable?

    public override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        if let context = NSGraphicsContext.currentContext()?.CGContext {
            if let drawable = drawable {
                drawable.draw(context)
            }
        }
    }
    public override var flipped : Bool {
        return true
    }
}

#endif
