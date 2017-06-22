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
    
    
    @IBOutlet weak var DateLabel: UILabel!
    var Date = String()
    var backgroundColor = String()
    
    @IBOutlet weak var TextLabel: UILabel!
 
    var Text = String()
    
    override func viewDidLoad() {
        TextLabel.text = Text
        DateLabel.text = Date
        if ( backgroundColor == "Red") {
            self.view.backgroundColor = UIColor(red: 0.898, green: 0.2941, blue: 0.2941, alpha: 1.0)
        }
        else {
            self.view.backgroundColor = UIColor(red: 0.9686, green: 0.9333, blue: 0.4627, alpha: 1.0)
        }
      
    }
    
}
