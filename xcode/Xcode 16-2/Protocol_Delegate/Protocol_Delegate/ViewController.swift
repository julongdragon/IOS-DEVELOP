//
//  ViewController.swift
//  Protocol_Delegate
//
//  Created by Lhong on 9/19/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController , ofDelegate {
    var temp_one : String?
    var temp_data: String?
    @IBOutlet weak var waithing_protocol_delegate: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "two" {
            let target = segue.destination as! twoViewController
            target.temp_twoView = "Hello ,World"
            target.delegate = self
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func changeState(value: Bool) {
        if value {
            self.temp_one = temp_data
            waithing_protocol_delegate.text! = self.temp_one!
        }
    }


}

