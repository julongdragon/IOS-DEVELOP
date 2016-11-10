//
//  threeViewController.swift
//  VC
//
//  Created by Lhong on 9/3/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class threeViewController: UIViewController {

    @IBAction func dismiss(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: {})
    }
    @IBAction func three_btn(_ sender: AnyObject) {
        let CallOneViewController = self.storyboard!.instantiateViewController(withIdentifier: "one") as! ViewController
        //self.present(CallOneViewController, animated: true, completion: nil)
        //self.navigationController?.pushViewController(CallOneViewController, animated: true)
       self.navigationController?.popToRootViewController(animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
