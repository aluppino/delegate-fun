//
//  ZipCodeTextFieldDelegate.swift
//  Delegate Fun
//
//  Created by Luppino, Angelo on 2/26/16.
//  Copyright © 2016 Angelo Luppino. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate: NSObject, UITextFieldDelegate {
    
    let integers = ["0","1",
                    "2","3",
                    "4","5",
                    "6","7",
                    "8","9"]
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if (string == "") {
            return true
        }
        else if (!integers.contains(string)) {
            return false
        }
        else if (textField.text!.characters.count > 4) {
            return false
        } else {
            return true
        }
    }

}
