//
//  Color.swift
//  Draw
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

import Foundation
import CoreGraphics

public protocol Color {
    var CGColor : CGColorRef { get }
}

public struct RGBA : Color {
    let red : CGFloat
    let green : CGFloat
    let blue : CGFloat
    let alpha : CGFloat

    public var CGColor : CGColorRef {
        return CGColorCreateGenericRGB(self.red, self.green, self.blue, self.alpha)
    }

    public init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

public struct GRAY : Color {
    let gray : CGFloat
    let alpha : CGFloat

    public var CGColor : CGColorRef {
        return CGColorCreateGenericGray(1, 1)
    }

    public init(_ gray: CGFloat, _ alpha: CGFloat) {
        self.gray = gray
        self.alpha = alpha
    }
}