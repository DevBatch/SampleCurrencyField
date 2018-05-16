//
//  ViewController.swift
//  SampleCurrencyField
//
//  Created by DB MAC MINI on 5/16/18.
//  Copyright © 2018 DB MAC MINI. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

