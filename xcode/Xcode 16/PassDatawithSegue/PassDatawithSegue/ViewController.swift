//
//  ViewController.swift
//  PassDatawithSegue
//
//  Created by julong on 9/12/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let target = segue.destination as! twoViewController
//        target.temp2 = "Hello View2"
            let target = segue.destination as!  twoViewController
        target.temp2 = "hello View2"
        
    }

}

