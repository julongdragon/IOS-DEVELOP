//
//  CellObject.swift
//  switch
//
//  Created by julong on 9/13/2559 BE.
//  Copyright © 2559 Eakkasit Tunsakool. All rights reserved.
//

import UIKit

class CellObject: NSObject {
    var MyLabel: String
    var Togle_state: Bool
    init(Togle_state : Bool , MyLabel:String){
        self.MyLabel = MyLabel
        self.Togle_state = Togle_state
    }
}
