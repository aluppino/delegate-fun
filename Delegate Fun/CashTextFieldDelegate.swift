//
//  CashTextFieldDelegate.swift
//  Delegate Fun
//
//  Created by Luppino, Angelo on 2/26/16.
//  Copyright © 2016 Angelo Luppino. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    var pennies = 0
    
    let integers = ["0","1",
                    "2","3",
                    "4","5",
                    "6","7",
                    "8","9"]
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        
        if (string == "") {
            pennies -= pennies % 10
            pennies /= 10
        }
        else if (integers.contains(string)) {
            pennies *= 10
            pennies += Int(string)!
        }
        
        textField.text = formatter.stringFromNumber(Float(pennies)/100)
        
        return false
    }
    
    func textFieldShouldClear(textField: UITextField) -> Bool {
        textField.text = "$0.00"
        pennies = 0
        return false
    }
    
}
