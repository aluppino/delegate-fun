//
//  ViewController.swift
//  Delegate Fun
//
//  Created by Luppino, Angelo on 2/26/16.
//  Copyright © 2016 Angelo Luppino. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var cashTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    
    @IBOutlet weak var lock: UISwitch!
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipCodeTextField.delegate = zipCodeDelegate
        cashTextField.delegate = cashDelegate
        lockableTextField.delegate = self
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        if (lock.on) {
            return true
        } else {
            return false
        }
    }

    @IBAction func flipLock(sender: UISwitch) {
        if (!sender.on && lockableTextField.isFirstResponder()) {
            dismissKeyboard(nil)
        }
    }
    
    @IBAction func dismissKeyboard(sender: AnyObject!) {
        view.endEditing(true)
    }
}

