//
//  ViewController.swift
//  Calculator
//
//  Created by user195628 on 6/24/21.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    var inputNumber1 : Double? = 0.0
    var inputNumber2 : Double? = 0.0
    var operationFlag : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clearInput(_ sender: UIButton) {
        
    }
    
    
    @IBAction func performAddition(_ sender: UIButton) {
        
        let checkString : String = inputTextField.text!
        if(checkString.isEmpty){
            print("No input entered")
        }else if(Double(checkString) == nil){
            print("Invalid input entered")
        }else{
            inputNumber1 = Double(checkString)
            operationFlag = "Addition"
            inputTextField.text?.removeAll()
        }
    
    }
    
    @IBAction func performSubtraction(_ sender: UIButton) {
    }
    
    
    @IBAction func performMultiplication(_ sender: UIButton) {
    }
    
    @IBAction func performDivision(_ sender: UIButton) {
        
    }
    
    
    @IBAction func calculateAnswer(_ sender: Any) {
        
        let checkString : String = inputTextField.text!
        if(checkString.isEmpty){
            print("No input entered")
        }else if(Double(checkString) == nil){
            print("Invalid input entered")
        }else{
        
            inputNumber2 = Double(checkString)
            
            switch operationFlag {
           
            case "Addition": outputLabel.text = String(inputNumber1! + inputNumber2!)
            
            default: print("Okay")
        
            }
        }
    }
    
    
}

