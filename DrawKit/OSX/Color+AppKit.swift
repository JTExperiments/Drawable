//
//  Color+AppKit.swift
//  Draw
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

#if !os(iOS)

import Foundation

extension RGBA {
    public var CGColor : CGColorRef {
        return CGColorCreateGenericRGB(self.red, self.green, self.blue, self.alpha)
    }
}

extension GRAY {
    public var CGColor : CGColorRef {
        return CGColorCreateGenericGray(self.gray, self.alpha)
    }
}

#endif
