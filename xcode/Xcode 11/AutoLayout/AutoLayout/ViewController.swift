//
//  ViewController.swift
//  AutoLayout
//
//  Created by Lhong on 8/19/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func signin(_ sender: AnyObject) {
        FIRAuth.auth()?.signIn(withEmail: email.text!, password: password.text!, completion: {
            (user,error) in
            if error != nil {
                print("ไม่สำเร็จ")

            }else{
                print("สำเร็จ")
            }
        })
    }

   

}

