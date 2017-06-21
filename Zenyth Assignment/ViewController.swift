//
//  ViewController.swift
//  Zenyth Assignment
//
//  Created by Emily Heejung Son on 6/21/17.
//  Copyright © 2017 Emily Heejung Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var InputText: UITextField!
   
    @IBOutlet var RedSwitch: UISwitch!
    
    @IBOutlet var YellowSwitch: UISwitch!
    var BackgroundRed = 0
    var BackgroundYellow = 0
    
    @IBAction func RedSwitchOn(_ sender: UISwitch) {
        if ( self.RedSwitch.isOn) {
            BackgroundRed = 1
        }
        else {
            BackgroundRed = 0
        }
       
       
    }
   
    
    @IBAction func YellowSwitchOn(_ sender: UISwitch) {
        if (self.YellowSwitch.isOn) {
            BackgroundYellow = 1
        }
        else {
            BackgroundYellow = 0
        }
   
    }
 
    
  /*
    @IBAction func NextAction(_ sender: Any) {
        
        if (BackgroundRed != BackgroundYellow && InputText.text != "") {
            performSegue(withIdentifier: "ResultVC", sender: self)
        }
        else {
            
        }
        
    }
 */
    
    
    @IBOutlet var WarningLabel: UILabel!
    
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if ( ((!YellowSwitch.isOn && RedSwitch.isOn) || (YellowSwitch.isOn && !RedSwitch.isOn)) ) {
            if (!((InputText.text)?.isEmpty)!) {
                WarningLabel.isHidden = true
                return true;
            }
        }
        WarningLabel.isHidden = false
        return false
        
    }
 


    @IBOutlet var DatePicker: UIDatePicker!
    var date = String()
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        WarningLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
            let DestViewController : ResultVC = segue.destination as! ResultVC
            DestViewController.Text = InputText.text!
    
        
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .none
            dateFormatter.timeStyle = .short
            date = dateFormatter.string(from: DatePicker.date)
            DestViewController.Date = date
            if ( RedSwitch.isOn) {
                DestViewController.backgroundColor = "Red"
            }
            else if (YellowSwitch.isOn) {
                DestViewController.backgroundColor = "Yellow"
            }
    
        
        
       
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

