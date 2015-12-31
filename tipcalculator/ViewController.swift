//
//  ViewController.swift
//  tipcalculator
//
//  Created by Harris Christiansen on 12/31/15.
//  Copyright © 2015 Harris Christiansen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    let tipPercentages = [0.18, 0.2, 0.25]
    @IBAction func onEditingChanged(sender: AnyObject) {
        let billAmount = NSString(string: billField.text!).doubleValue
        let tipAmount = billAmount * tipPercentages[tipControl.selectedSegmentIndex]
        let totalAmount = billAmount + tipAmount
        
        tipLabel.text = String(format: "$%.2f", tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }

    @IBAction func onTapCalcView(sender: AnyObject) {
        view.endEditing(true)
    }
}

