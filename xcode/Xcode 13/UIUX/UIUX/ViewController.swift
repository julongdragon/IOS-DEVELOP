//
//  ViewController.swift
//  UIUX
//
//  Created by Lhong on 8/24/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!

    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var SegmentController: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text! = "Start..."
        SegmentController.addTarget(self, action: #selector(change), for: .valueChanged)
    }
    
    @IBAction func button(_ sender: AnyObject) {
        print("click")
        label.text! = input.text!
    }
    
    func change () {
        if SegmentController.selectedSegmentIndex == 0 {
            label.text! = input.text!
            print(0)
        }
        if SegmentController.selectedSegmentIndex == 1 {
            label.text! = input.text!
            print(1)
        }else{
            label.text! = input.text!
            print(2)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

