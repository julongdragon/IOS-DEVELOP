//
//  ViewController.swift
//  xcode8beta3
//
//  Created by Lhong on 7/27/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBAction func click(_ sender: AnyObject) {
        
        count += 1
        
        print("Click ! ,",count)
    }
// ซ่อน Status bar  ด้วย code
//    override func prefersStatusBarHidden() -> Bool {
//        return true
//    }
// จบการซ่อน Status bar  ด้วย code
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

