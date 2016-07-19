//
//  ViewController.swift
//  Pie
//
//  Created by Lhong on 4/9/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let screenSize:CGRect = UIScreen.mainScreen().bounds
        let button = UIButton(type: UIButtonType.System) as UIButton
        button.frame = CGRectMake((screenSize.width/2)-200, (screenSize.height/2)-100, 200, 100)
        button.backgroundColor = UIColor.brownColor()
        button.setTitle("Click Me", forState: UIControlState.Normal)
        button.titleLabel!.font = UIFont(name:"Times New Roman",size: 50)
        button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        
        button.addTarget(self, action:#selector(clickme), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button)
        
    }
    func clickme(){
        print("Click Again!!!!")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

