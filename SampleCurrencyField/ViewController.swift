//
//  ViewController.swift
//  SampleCurrencyField
//
//  Created by DB MAC MINI on 5/16/18.
//  Copyright © 2018 DB MAC MINI. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: CurrencyTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.currencySymbol = "£"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("Final value is : ",String(textField.text?.integer as! Int))
    }
}

