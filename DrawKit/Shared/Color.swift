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
    public let red : CGFloat
    public let green : CGFloat
    public let blue : CGFloat
    public let alpha : CGFloat

    public init(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) {
        self.red = red
        self.green = green
        self.blue = blue
        self.alpha = alpha
    }
}

public struct GRAY : Color {
    public let gray : CGFloat
    public let alpha : CGFloat

    public init(_ gray: CGFloat, _ alpha: CGFloat) {
        self.gray = gray
        self.alpha = alpha
    }
}