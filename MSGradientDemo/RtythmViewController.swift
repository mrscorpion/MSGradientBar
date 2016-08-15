//
//  RtythmViewController.swift
//  MSGradientDemo
//
//  Created by mr.scorpion on 16/8/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

import UIKit

class RtythmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.purpleColor()
        
        let audioPlot1 = UIView(frame: CGRectMake(0, 0, 320, 200))
        audioPlot1.backgroundColor = UIColor.blueColor()
        self.view.addSubview(audioPlot1)
        
        let bar1 = RhythmBar()
        bar1.frame = CGRectMake(100, 0, 20, 190)
        audioPlot1.addSubview(bar1)
        
        let bar2 = RhythmBar()
        bar2.frame = CGRectMake(130, 0, 20, 150)
        audioPlot1.addSubview(bar2)
        
        let bar3 = RhythmBar()
        bar3.frame = CGRectMake(160, 0, 20, 50)
        audioPlot1.addSubview(bar3)
        
        let bar4 = RhythmBar()
        bar4.frame = CGRectMake(190, 0, 20, 100)
        audioPlot1.addSubview(bar4)
        
        let bar5 = RhythmBar()
        bar5.frame = CGRectMake(220, 0, 20, 200)
        audioPlot1.addSubview(bar5)
        
        
        audioPlot1.layer.transform = CATransform3DMakeRotation(3.14, 0, 0, 1)
        
        
        let audioPlot2 = UIView(frame: CGRectMake(0, 250, 320, 200))
        audioPlot2.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(audioPlot2)
        
        let bar6 = RhythmBar()
        bar6.frame = CGRectMake(100, 0, 20, 190)
        audioPlot2.addSubview(bar6)
        
        let bar7 = RhythmBar()
        bar7.frame = CGRectMake(130, 0, 20, 150)
        audioPlot2.addSubview(bar7)
        
        let bar8 = RhythmBar()
        bar8.frame = CGRectMake(160, 0, 20, 50)
        audioPlot2.addSubview(bar8)
        
        let bar9 = RhythmBar()
        bar9.frame = CGRectMake(190, 0, 20, 100)
        audioPlot2.addSubview(bar9)
        
        let bar10 = RhythmBar()
        bar10.frame = CGRectMake(220, 0, 20, 200)
        audioPlot2.addSubview(bar10)
        
        
        // 退出该界面
        let singleFingerTwo = UITapGestureRecognizer(target: self, action: #selector(dismissHandle))
        singleFingerTwo.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(singleFingerTwo)
    }
    
    func dismissHandle() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
