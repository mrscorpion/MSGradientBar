//
//  RhythmBar.swift
//  MSGradientDemo
//
//  Created by mr.scorpion on 16/8/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

import UIKit

class RhythmBar: UIView {

    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        //// Gradient Declarations
        let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [UIColor.redColor().CGColor, UIColor.greenColor().CGColor], [0, 1])
        
        //// Background Drawing
        let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
        CGContextSaveGState(context)
        backgroundPath.addClip()
        CGContextDrawLinearGradient(context, purpleGradient,
                                    CGPointMake(200, 200),
                                    CGPointMake(200, 0),
                                    .DrawsBeforeStartLocation)
        CGContextRestoreGState(context)
    }

}
