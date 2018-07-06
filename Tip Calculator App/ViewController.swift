//
//  ViewController.swift
//  Tip Calculator App
//
//  Created by Aslan Lee on 7/3/18.
//  Copyright © 2018 Aslan Lee. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    // my variables + outlets
    
    @IBOutlet weak var totalCostTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var newTotalLabel: UILabel!
    @IBOutlet weak var personCount: UILabel!
    var peoples : Int = 1
    var percent = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        peoples = Int(personCount.text!)!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
            // tip button function
    
    @IBAction func onTapped10(_ sender: Any) {
        if let totalCost = Double(totalCostTextField.text!) {
            let paidTip = round(totalCost * 0.1*100)/100.0
            let newTotal = round((totalCost + paidTip)*100)/100.0
            tipLabel.text = "Tip: $" + String(paidTip / Double(peoples))
            newTotalLabel.text = "New Total: $" + String(newTotal / Double(peoples))
            percent = 0.10
        }
            view.endEditing(true)
    }
    
    @IBAction func onTapped20(_ sender: Any) {
        if let totalCost = Double(totalCostTextField.text!) {
            let paidTip = round(totalCost * 0.2 * 100)/100.0
            let newTotal = round((totalCost + paidTip)*100)/100.0
            tipLabel.text = "Tip: $" + String(paidTip / Double(peoples))
            newTotalLabel.text = "New Total: $" + String(newTotal / Double(peoples))
            percent = 0.20
        }
             view.endEditing(true)
    }
    
    
    @IBAction func onTapped15(_ sender: Any) {
        if let totalCost = Double(totalCostTextField.text!) {
            let paidTip = round(totalCost * 0.15 * 100)/100.0
            let newTotal = round((totalCost + paidTip)*100)/100.0
            tipLabel.text = "Tip: $" + String(paidTip / Double(peoples))
            newTotalLabel.text = "New Total: $" + String(newTotal / Double(peoples))
            percent = 0.15
        }
            view.endEditing(true)
    }
    
    
    @IBAction func onTapped25(_ sender: Any) {
        if let totalCost = Double(totalCostTextField.text!) {
            let paidTip = round(totalCost * 0.25 * 100)/100.0
            let newTotal = round((totalCost + paidTip)*100)/100.0
            tipLabel.text = "Tip: $" + String(paidTip / Double(peoples))
            newTotalLabel.text = "New Total: $" + String(newTotal / Double(peoples))
            percent = 0.25
        }
            view.endEditing(true)
    }
    //arrow button function
    
    @IBAction func onTappedArrowUp(_ sender: Any) {
        peoples += 1
        personCount.text = "\(peoples)"
        if let totalCost = Double(totalCostTextField.text!) {
            let paidTip = round(totalCost * percent * 100)/100.0
            let newTotal = round((totalCost + paidTip)*100)/100.0
            tipLabel.text = "Tip: $" + String(paidTip / Double(peoples))
            newTotalLabel.text = "New Total: $" + String(newTotal / Double(peoples))
            
        }
        
        }
    
    @IBAction func onTappedArrowDown(_ sender: Any) {
        peoples -= 1
        if peoples == 0
        {
            peoples = 1
        }
        
        personCount.text = String(peoples)
        if let totalCost = Double(totalCostTextField.text!) {
            let paidTip = round(totalCost * percent * 100)/100.0
            let newTotal = round((totalCost + paidTip)*100)/100.0
            tipLabel.text = "Tip: $" + String(paidTip / Double(peoples))
            newTotalLabel.text = "New Total: $" + String(newTotal / Double(peoples))
            
        }
        
    }
    
}





