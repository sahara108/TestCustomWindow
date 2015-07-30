//
//  SecondViewController.swift
//  TestWindow
//
//  Created by Nguyen Tuan on 7/30/15.
//  Copyright (c) 2015 pk.atc. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let button: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button.frame = CGRectMake(50, 50, 100, 45)
        button.setTitle("Button2", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
        
        let button2: UIButton = UIButton.buttonWithType(UIButtonType.Custom) as! UIButton
        button2.frame = CGRectMake(150, 50, 100, 45)
        button2.setTitle("Push", forState: .Normal)
        button2.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button2.addTarget(self, action: "push:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button2)
    }
    
    func pressed(sender: AnyObject) {
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        appDelegate.showOrHidePopupWindow()
    }
    
    func push(sender: AnyObject) {
        let vc = UIViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

