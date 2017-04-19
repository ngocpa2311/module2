//
//  ViewController.swift
//  Calculator
//
//  Created by Admin on 4/19/17.
//  Copyright © 2017 ngocpa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var typingNumber = false
    var firstNumber : Double = 0
    var secondNumber : Double = 0
    var operation = 0
    
    
    @IBOutlet weak var lbNumber: UILabel!
    
    
    @IBAction func tapNumber(_ sender: UIButton) {
        if typingNumber == true {
            lbNumber.text = String(sender.tag)
            secondNumber = Double(lbNumber.text!)!
            typingNumber = false
        }
        else {
            lbNumber.text = lbNumber.text! + String(sender.tag)
            secondNumber = Double(lbNumber.text!)!
        }
        
    }
    
    
    @IBAction func tapCalculator(_ sender: UIButton) {
        if lbNumber.text != "" && sender.tag != 14 && sender.tag != 15 {
            firstNumber = Double(lbNumber.text!)!
            operation = sender.tag
            typingNumber = true
            
            //Chia
            if operation == 10 {
                lbNumber.text = "/"
            }
            //Nhan
            if operation == 11 {
                lbNumber.text = "x"
            }
            //Tru
            if operation == 12 {
                lbNumber.text = "-"
            }
            //Cong
            if operation == 13 {
                lbNumber.text = "+"
            }
        }
        //Tinh toan
        if sender.tag == 14 {
            if operation == 10 {
                lbNumber.text = String(firstNumber / secondNumber)
            }
            if operation == 11 {
                lbNumber.text = String(firstNumber * secondNumber)
            }
            if operation == 12 {
                lbNumber.text = String(firstNumber - secondNumber)
            }
            if operation == 13 {
                lbNumber.text = String(firstNumber + secondNumber)
            }
        }
        //Clear
        if sender.tag == 15 {
            lbNumber.text = ""
            firstNumber = 0
            secondNumber = 0
            operation = 0
        }
    }
    
}

