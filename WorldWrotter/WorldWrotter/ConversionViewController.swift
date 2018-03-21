//
//  ConversionViewController.swift
//  WorldWrotter
//
//  Created by Alicia Anahí Fernández Hidalgo on 16/03/18.
//  Copyright © 2018 Alicia Anahí Fernández Hidalgo. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiusLabel: UILabel!
    
    @IBAction func fahrenheitFieldEditingChanged(_ textField: UITextField) {
        celsiusLabel.text = textField.text
    }
}
