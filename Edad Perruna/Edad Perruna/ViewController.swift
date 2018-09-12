//
//  ViewController.swift
//  Edad Perruna
//
//  Created by alejandro gonzalez casado.
//  Copyright © 2018 Idrilplays. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dogAgeField: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = " ¿? "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }

    @IBAction func pressedButon(_ sender: UIButton) {
    
        if let fieldStr = dogAgeField.text, let textFieldValue = Int(fieldStr) {
        
   
        
    let convertedValue = textFieldValue * 7
        
        if textFieldValue >= 50 { resultLabel.text = "ERROR"
            let alertController2: UIAlertController = UIAlertController(title: "🐶", message: "¿ESTÁS SEGURO?", preferredStyle: .actionSheet)
            let okAction2 : UIAlertAction = UIAlertAction(title: "CANCELAR", style: .destructive, handler: nil)
            
            alertController2.addAction(okAction2)
            present(alertController2,animated: true,completion: nil)
        
        }
        else { resultLabel.text = "\(convertedValue)"
            let alertController: UIAlertController = UIAlertController(title: "🐶", message: "EDAD GENERADA", preferredStyle: .actionSheet)
            let okAction : UIAlertAction = UIAlertAction(title: "OK", style: .destructive, handler: nil)
            
            alertController.addAction(okAction)
            present(alertController,animated: true,completion: nil)
        }
        } else {
            resultLabel.text = "ERROR"
        }
        
    }

}

