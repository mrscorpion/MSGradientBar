//
//  ReverseRhythmBar.swift
//  MSGradientDemo
//
//  Created by mr.scorpion on 16/8/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

import UIKit

class ReverseRhythmBar: UIView {

    override func drawRect(rect: CGRect) {
        
        let context = UIGraphicsGetCurrentContext()
        
        //// Gradient Declarations
        let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [UIColor.greenColor().CGColor, UIColor.redColor().CGColor], [0.2, 0.5])
        
        //// Background Drawing
        let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
        CGContextSaveGState(context)
        backgroundPath.addClip()
        CGContextDrawLinearGradient(context, purpleGradient,
                                    CGPointMake(0.5, 1),
                                    CGPointMake(0.5, 0),
                                    .DrawsBeforeStartLocation)
        CGContextRestoreGState(context)
    }

}
