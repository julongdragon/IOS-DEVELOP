//
//  ViewController.swift
//  VC
//
//  Created by Lhong on 9/2/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func dismiss(_ sender: AnyObject) {
         self.dismiss(animated: true, completion: {})
    }
    @IBAction func one_btn(_ sender: AnyObject) {
        
        let CallTwoViewController : UIViewController? = self.storyboard!.instantiateViewController(withIdentifier: "two") as! twoViewController
        //self.present(CallTwoViewController!, animated: true, completion: nil)
        self.navigationController?.pushViewController(CallTwoViewController!, animated: true)
     
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

