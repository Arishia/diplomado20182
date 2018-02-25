//
//  ViewController.swift
//  prueba
//
//  Created by markmota on 2/24/18.
//  Copyright © 2018 markmota. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Se agrega @IBOutlet para que el Main.storyboard reconozca la etiqueta y se hace la conexión
    @IBOutlet weak var outtletText: UITextField!
    @IBOutlet weak var aoutletButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aoutletButton.setTitle("Touch me!", for: .normal)
    }

    //Se agrega @IBAction para que el metodo aparezca en el Main.storyboard y se hace la conexión
    //con el botón
    @IBAction func actionButton(_ sender: Any) {
        outtletText.text = "You are a genius "
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

