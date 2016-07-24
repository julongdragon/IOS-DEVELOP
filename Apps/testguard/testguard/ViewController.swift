//
//  ViewController.swift
//  testguard
//
//  Created by Lhong on 7/23/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit
extension UIViewController {
    func dismissKeyboardFromView(sender: UITapGestureRecognizer?) {
        let view = sender?.view
        view?.endEditing(true)
    }
}
class ViewController: UIViewController {
//    let username : String? = "Lhong"
//    let password : String? = "!@#$%"
    let remember_password : Bool = true

  
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func reg_member (_username:String?,_password:String?,_remember_password:Bool) {
        print("success!")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnguardclick(_ sender: AnyObject) {
//        guard let _ = usernameInput.text , usernameInput.text == "" ,
//              let _ = passwordInput.text , passwordInput.text == "" else {
//              print("error 1")
//              return
//        }
//         reg_member      (_username: usernameInput.text, _password: passwordInput.text!, _remember_password: remember_password)
        if let _ = usernameInput.text , usernameInput.text == "" ,
            let _ = passwordInput.text , passwordInput.text == "" {
                print("error 1")
                return
        }
        reg_member      (_username: usernameInput.text, _password: passwordInput.text!, _remember_password: remember_password)
    }
 

}

