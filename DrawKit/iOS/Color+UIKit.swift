//
//  Color+UIKit.swift
//  Draw
//
//  Created by James Tang on 19/6/15.
//  Copyright © 2015 James Tang. All rights reserved.
//

#if os(iOS)

import UIKit

extension RGBA {
    public var CGColor : CGColorRef {
        return UIColor(red: self.red, green: self.green, blue: self.blue, alpha: self.alpha).CGColor
    }
}

extension GRAY {
    public var CGColor : CGColorRef {
        return UIColor(white: self.gray, alpha: self.alpha).CGColor
    }
}

#endif
