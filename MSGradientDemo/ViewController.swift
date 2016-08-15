//
//  ViewController.swift
//  MSGradientDemo
//
//  Created by mr.scorpion on 16/8/15.
//  Copyright © 2016年 mr.scorpion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bar1 : GradientView = GradientView()
        bar1.frame = CGRectMake(100, 50, 20, 200)
        self.view.addSubview(bar1)
        
        let bar2 : GradientView = GradientView()
        bar2.frame = CGRectMake(130, 50, 20, 50)
        self.view.addSubview(bar2)
        
        let bar3 : GradientView = GradientView()
        bar3.frame = CGRectMake(160, 50, 20, 100)
        self.view.addSubview(bar3)
        
        let bar4 : GradientView = GradientView()
        bar4.frame = CGRectMake(190, 50, 20, 150)
        self.view.addSubview(bar4)
        
        let bar5 : GradientView = GradientView()
        bar5.frame = CGRectMake(220, 50, 20, 400)
        self.view.addSubview(bar5)
        
        
        // 跳转到下一个界面
        let singleFingerTwo = UITapGestureRecognizer(target: self, action: #selector(toNext))
        singleFingerTwo.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(singleFingerTwo)
    }

    func toNext() {
        self.presentViewController(RtythmViewController(), animated: true, completion: nil)
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

