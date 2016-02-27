//
//  ViewController.swift
//  Delegate Fun
//
//  Created by Luppino, Angelo on 2/26/16.
//  Copyright © 2016 Angelo Luppino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var zipCodeTextField: UITextField!
    
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipCodeTextField.delegate = zipCodeDelegate
    }

}

