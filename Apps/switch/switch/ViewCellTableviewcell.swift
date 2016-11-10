//
//  ViewCellTableviewcell.swift
//  switch
//
//  Created by julong on 9/13/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class ViewCellTableviewcell: UITableViewCell {
    
    var delegate: cellStateDidChange?
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var toggle: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
    
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        toggle.setOn(false , animated: false)
        label.text = ""
        
    }
    @IBAction func Toggle(_ sender: AnyObject) {
        let delegate_uiswitch = sender as! UISwitch
        delegate?.cellToggle(self, isOn: delegate_uiswitch.isOn)
    }
   


}
