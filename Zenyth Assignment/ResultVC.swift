//
//  ResultVC.swift
//  Zenyth Assignment
//
//  Created by Emily Heejung Son on 6/21/17.
//  Copyright © 2017 Emily Heejung Son. All rights reserved.
//

import Foundation
import UIKit

class ResultVC : UIViewController {
    
    @IBOutlet var DateLabel: UILabel!
    var Date = String()
    var backgroundColor = String()
    
    @IBOutlet var TextLabel: UILabel!
    var Text = String()
    
    override func viewDidLoad() {
        TextLabel.text = Text
        DateLabel.text = Date
        if ( backgroundColor == "Red") {
            self.view.backgroundColor = UIColor.red
        }
        else {
            self.view.backgroundColor = UIColor.yellow
        }
      
    }
    
}
