//
//  ViewController.swift
//  tableview
//
//  Created by julong on 10/5/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var ar = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...10 {
            ar.append(i)
        }
                // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return ar.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(ar[indexPath.row])
        cell.detailTextLabel?.text = "r"
        return cell
    }

 
}

