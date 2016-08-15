//
//  GradientView.swift
//  MSGradientDemo
//
//  Created by mr.scorpion on 16/8/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

import UIKit

class GradientView: UIView {

    override func drawRect(rect: CGRect) {
//        let lightPurple: UIColor = UIColor(red: 0.377, green: 0.075, blue: 0.778, alpha: 1.000)
//        let darkPurple: UIColor = UIColor(red: 0.060, green: 0.036, blue: 0.202, alpha: 1.000)
        
        let context = UIGraphicsGetCurrentContext()
        
        //// Gradient Declarations
//        let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [lightPurple.CGColor, darkPurple.CGColor], [0, 1])
        let purpleGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [UIColor.greenColor().CGColor, UIColor.redColor().CGColor], [0, 1])
        
        //// Background Drawing
        let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
        CGContextSaveGState(context)
        backgroundPath.addClip()
        CGContextDrawLinearGradient(context, purpleGradient,
                                    CGPointMake(160, 0),
                                    CGPointMake(160, 568),
                                    .DrawsBeforeStartLocation)
        CGContextRestoreGState(context)
    }

}
