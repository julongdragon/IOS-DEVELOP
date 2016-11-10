//
//  ViewController.swift
//  tableViewControllerStruct
//
//  Created by Eakkasit Tunsakool on 10/19/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

struct productLine {
    var productCategory : String
    var productLists : [String]
}

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var products = [productLine]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        products = [
            productLine(productCategory:"iMac", productLists:["4K","5K"]), // 0
            productLine(productCategory:"iPhone", productLists:["7","7Plus"]), // 1
            productLine(productCategory:"Watch", productLists:[".38",".42"]), //2
        ]
        print(products.count)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return products.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products[section].productLists.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = products[indexPath.section].productLists[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return products[section].productCategory
    }
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            products[indexPath.section].productLists.remove(at: indexPath.row)
            tableView.deleteRows(at: [IndexPath.init(row: indexPath.row, section: indexPath.section)], with: .fade)
        }
        if products[indexPath.section].productLists.count == 0 {
            products.remove(at: indexPath.section)
            let index : IndexSet = NSIndexSet(index: indexPath.section) as IndexSet
            tableView.deleteSections(index, with: .middle)
        }
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}

