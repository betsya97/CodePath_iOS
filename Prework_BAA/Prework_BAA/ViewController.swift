//
//  ViewController.swift
//  Prework_BAA
//
//  Created by Betsy Avila on 7/24/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tip Calculator"
        //make textField the first responder
        billAmountTextField.becomeFirstResponder()
    }

    @IBAction func calculateTip(_ sender: Any) {
        /*get initial value, calculate and update tip*/
                //make variable for parsing the string into a double value
                let bill = Double(billAmountTextField.text!) ?? 0
                //make array to hold percentage values
                let tipPercentages = [0.15, 0.18, 0.20]
                
                // tip = tip percentage[selected percentage] * bill
                //index 0 = 15%, etc..
                let tip = tipPercentages[tipControl.selectedSegmentIndex] * bill
                
                //total calculation
                let total = bill + tip
                
                //time to update tipAmount label
                tipAmountLabel.text = String(format: "$%.2f", tip)//format string to have a decimal with 2 places
                
                //time to update total label
                totalLabel.text = String(format: "$%.2f", total)
    }
    
}

