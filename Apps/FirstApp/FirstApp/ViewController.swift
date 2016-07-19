//
//  ViewController.swift
//  FirstApp
//
//  Created by julong on 2/17/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    @IBAction func BTN(sender: AnyObject) {
        print("สวัสดีครับ")
        
        for _ in 1...10 {
          AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

