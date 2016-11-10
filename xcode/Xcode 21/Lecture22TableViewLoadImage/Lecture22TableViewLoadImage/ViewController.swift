//
//  ViewController.swift
//  Lecture22TableViewLoadImage
//
//  Created by Eakkasit Tunsakool on 10/20/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate{
    var workSpace = ["01.jpg","02.jpg","03.jpg","04.jpg","05.jpg",
                     "06.jpg","07.jpg","08.jpg","09.jpg","10.jpg"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
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
        return workSpace.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! dataTableViewCell
        
        let imageWidth = 60 as CGFloat
        var frame = cell.imageData.frame
        frame.size.width = imageWidth
        frame.size.height = imageWidth
        cell.imageData.frame = frame
        cell.imageData.layer.cornerRadius = imageWidth / 2.0
        cell.imageData.clipsToBounds = true
        cell.imageData.image = UIImage(named: workSpace[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.00
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected")
        performSegue(withIdentifier: "sendData", sender: workSpace[indexPath.row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let des = segue.destination as! detailViewController
        des.temp = sender as? String
    }
}

