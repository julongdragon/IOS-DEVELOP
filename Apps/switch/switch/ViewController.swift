//
//  ViewController.swift
//  switch
//
//  Created by julong on 9/13/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit
//

protocol cellStateDidChange {
    func cellToggle(_ model: ViewCellTableviewcell, isOn: Bool)
}

class ViewController: UIViewController , UITableViewDataSource,UITableViewDelegate,cellStateDidChange {
    
    var Objects: [CellObject] = []
    @IBOutlet weak var tableView: UITableView!
    
// Demo Data init
    func init_() {
        for i in 0...9{
            let setupCell: CellObject = CellObject(Togle_state:true,MyLabel: "Lhong-\(i)")
            Objects.append(setupCell)
        }
        print("object ::::::",Objects)
    }
// end of data init
    override func viewDidLoad() {
        super.viewDidLoad()
        init_()
        tableView.register(UINib(nibName: "ViewCell2", bundle: Bundle.main), forCellReuseIdentifier: "cell")

        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let MyCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewCellTableviewcell
        let model = Objects[(indexPath as NSIndexPath).row]
        MyCell.label.text = model.MyLabel
        MyCell.toggle.setOn(model.Togle_state, animated: true)
       // MyCell.toggle.isOn = true
        MyCell.delegate = self
        return MyCell
    }

}
extension ViewController {
    
    func cellToggle(_ model: ViewCellTableviewcell, isOn: Bool) {
        let obj = Objects[((tableView.indexPath(for: model) as NSIndexPath?)?.row)!]
        obj.Togle_state = isOn
        // ใส่ที่นี่นะจ๊ะ
        print("toggle :",obj)
        print("toggle :",tableView.indexPath(for: model))
    }
    
}

