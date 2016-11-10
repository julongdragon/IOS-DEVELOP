//
//  twoViewController.swift
//  Protocol_Delegate
//
//  Created by Lhong on 9/19/16.
//  Copyright © 2016 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

protocol ofDelegate {
    var temp_data : String? { get set }
    func changeState(value:Bool)
}

class twoViewController: UIViewController {
    
    var temp_twoView : String?
    var delegate : ofDelegate?
    @IBOutlet weak var label_two: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label_two.text! = temp_twoView!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func poptoRoot(_ sender: AnyObject) {
        delegate?.temp_data = "Thank you"
        delegate?.changeState(value: true)
        self.navigationController?.popViewController(animated: true)
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
