//
//  ViewController.swift
// 106405008
// 106405183
//
//

import UIKit
var labelNumber:Double = 0
var previousLableNumber:Double = 0
var previousNumber:Double = 0
var operation = "none"
var calculating:Bool = false
var newCalculating:Bool = true
var newCalculation:Bool = true
var haveNumber:Bool = false
var haveNewNumber:Bool = false
var haveDot:Bool = false
var havePNChange: Bool = false
class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBAction func ACButton(_ sender: UIButton) {
        label.text = "0"
        labelNumber = 0
        previousLableNumber = 0
        calculating = false
        operation = "none"
        newCalculating = true
        newCalculation = true
        haveNumber = false
        haveDot = false
    }
    
   
    
    @IBAction func number(_ sender: UIButton) {
        
        let nowNumber = sender.tag
        
        if (label.text != nil) {
            if (newCalculating == true) {
                if (label.text == "0")  {
                    label.text =  "\(nowNumber)"
                    newCalculating = false
                    labelNumber = Double(label.text!) ?? 0
                }else{
                    label.text = label.text! + "\(nowNumber)"
                    newCalculating = false
                    labelNumber = Double(label.text!) ?? 0
                
            }} else {
                if (newCalculation == false && haveDot==false) {
                    label.text = "\(nowNumber)"
                    newCalculation = true
                    calculating = true
                    haveNumber = true
                    labelNumber = Double(label.text!) ?? 0
                    haveNewNumber = true
                }else {
                    if (label.text == "0")  {
                        label.text =  "\(nowNumber)"
                        labelNumber = Double(label.text!) ?? 0
                    }else{
                        label.text = label.text! + "\(nowNumber)"
                        labelNumber = Double(label.text!) ?? 0
                    }
                }
            }
        }
        
        
        if ((label.text!).count >= 4) {
            if haveDot == true || havePNChange == true{
                label.text! = String(label.text!.prefix(5))
            } else if haveDot == true && havePNChange == true{
            label.text! = String(label.text!.prefix(6))
            } else{
                label.text! = String(label.text!.prefix(4))
            }
        }
                
        
        
    
    }
   

    @IBAction func add(_ sender: UIButton) {
        if (calculating == true && haveNumber == true) {
            if (operation == "add") {
                labelNumber = (previousLableNumber + labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "minus") {
                labelNumber = (previousLableNumber - labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mutiplier") {
                labelNumber = (previousLableNumber * labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))

                }
            } else if (operation == "mode") {
                labelNumber = previousLableNumber.truncatingRemainder(dividingBy: labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))

                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "devide") {
                if (labelNumber == 0) {
                    label.text = "錯誤"
                } else {
                    labelNumber = (previousLableNumber / labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                        }
            } else if (operation == "none") {
                label.text = "0"
            }
            labelNumber = Double(label.text!) ?? 0
            operation = "add"
            calculating = false
            newCalculation = false
            previousLableNumber = labelNumber
            haveNumber = false
            haveDot = false
        }else{
            labelNumber = Double(label.text!) ?? 0
            newCalculation = false
            operation = "add"
            calculating = true
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }
        
    }
    @IBAction func minus(_ sender: UIButton) {
        if (calculating == true && haveNumber == true) {
            if (operation == "add") {
                labelNumber = (previousLableNumber + labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "minus") {
                labelNumber = (previousLableNumber - labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mutiplier") {
                labelNumber = (previousLableNumber * labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mode") {
                labelNumber = previousLableNumber.truncatingRemainder(dividingBy: labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "devide") {
                if (labelNumber == 0) {
                    label.text = "錯誤"
                } else {
                    labelNumber = (previousLableNumber / labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                        }
            } else if (operation == "none") {
                label.text = "0"
            }
            labelNumber = Double(label.text!) ?? 0
            operation = "minus"
            calculating = false
            newCalculation = false
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }else{
            labelNumber = Double(label.text!) ?? 0
            newCalculation = false
            operation = "minus"
            calculating = true
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }
    }
    @IBAction func mutiplier(_ sender: UIButton) {
        if (calculating == true && haveNumber == true) {
            if (operation == "add") {
                labelNumber = (previousLableNumber + labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "minus") {
                labelNumber = (previousLableNumber - labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mutiplier") {
                labelNumber = (previousLableNumber * labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mode") {
                labelNumber = previousLableNumber.truncatingRemainder(dividingBy: labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "devide") {
                if (labelNumber == 0) {
                    label.text = "錯誤"
                } else {
                    labelNumber = (previousLableNumber / labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                        }
            } else if (operation == "none") {
                label.text = "0"
            }
            labelNumber = Double(label.text!) ?? 0
            operation = "mutiplier"
            calculating = false
            newCalculation = false
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }else{
            labelNumber = Double(label.text!) ?? 0
            newCalculation = false
            operation = "mutiplier"
            calculating = true
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }
    }
    @IBAction func devide(_ sender: UIButton) {
        if (calculating == true && haveNumber == true) {
            if (operation == "add") {
                labelNumber = (previousLableNumber + labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "minus") {
                labelNumber = (previousLableNumber - labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mutiplier") {
                labelNumber = (previousLableNumber * labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mode") {
                labelNumber = previousLableNumber.truncatingRemainder(dividingBy: labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "devide") {
                if (labelNumber == 0) {
                    label.text = "錯誤"
                } else {
                    labelNumber = (previousLableNumber / labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                        }
            } else if (operation == "none") {
                label.text = "0"
            }
            labelNumber = Double(label.text!) ?? 0
            operation = "devide"
            calculating = false
            newCalculation = false
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }else{
            labelNumber = Double(label.text!) ?? 0
            newCalculation = false
            operation = "devide"
            calculating = true
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }
    }
    @IBAction func mode(_ sender: UIButton) {
        if (calculating == true && haveNumber == true) {
            if (operation == "add") {
                labelNumber = (previousLableNumber + labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "minus") {
                labelNumber = (previousLableNumber - labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mutiplier") {
                labelNumber = (previousLableNumber * labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "mode") {
                labelNumber = previousLableNumber.truncatingRemainder(dividingBy: labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
            } else if (operation == "devide") {
                if (labelNumber == 0) {
                    label.text = "錯誤"
                } else {
                    labelNumber = (previousLableNumber / labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                        }
            } else if (operation == "none") {
                label.text = "0"
            }
            labelNumber = Double(label.text!) ?? 0
            operation = "mode"
            calculating = false
            newCalculation = false
            previousLableNumber = labelNumber
            haveNumber = false
            haveDot = false
        }else{
            labelNumber = Double(label.text!) ?? 0
            newCalculation = false
            operation = "mode"
            calculating = true
            haveNumber = false
            previousLableNumber = labelNumber
            haveDot = false
        }
        
    }
    
    @IBAction func point(_ sender: UIButton) {
        if (label.text != nil && haveDot == false) {
                    if ( newCalculating == true||newCalculation == false) {
                        label.text = "0."
                        newCalculation = false
                        labelNumber = Double(label.text!) ?? 0
                        haveDot = true
                    } else {
                        label.text = label.text! + "."
                        labelNumber = Double(label.text!) ?? 0
                        haveDot = true
                    }
                }
    }
    
    
    @IBAction func equal(_ sender: UIButton) {
        if (haveNewNumber == true){
            previousNumber = labelNumber
            haveNewNumber = false
        }
        else{
            labelNumber = previousNumber
        }
        if (calculating == true) {
            if (operation == "add") {
                labelNumber = (previousLableNumber + labelNumber)
                if(labelNumber-Double(Int(labelNumber)) != 0.0){
                    label.text = String(Double(labelNumber))
                }else{
                    label.text = String(Int(labelNumber))
                }
                }else if (operation == "minus") {
                    labelNumber = (previousLableNumber - labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                } else if (operation == "mutiplier") {
                    labelNumber = (previousLableNumber * labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                } else if (operation == "mode") {
                    labelNumber = previousLableNumber.truncatingRemainder(dividingBy: labelNumber)
                    if(labelNumber-Double(Int(labelNumber)) != 0.0){
                        label.text = String(Double(labelNumber))
                    }else{
                        label.text = String(Int(labelNumber))
                    }
                } else if (operation == "devide") {
                    if (labelNumber == 0) {
                        label.text = "錯誤"
                    } else {
                        labelNumber = (previousLableNumber / labelNumber)
                        if(labelNumber-Double(Int(labelNumber)) != 0.0){
                            label.text = String(Double(labelNumber))
                        }else{
                            label.text = String(Int(labelNumber))
                        }
                            }
                } else if (operation == "none") {
                    label.text = "0"
                }
            previousLableNumber = Double(label.text!) ?? 0
            newCalculation = false
            haveDot = false
            //haveNumber = false
            }
        }

    
    @IBAction func pnChange(_ sender: UIButton) {
        labelNumber = (labelNumber * -1.0)
        havePNChange = true
        if(labelNumber-Double(Int(labelNumber)) != 0.0){
            label.text = String(Double(labelNumber))
        }else{
            label.text = String(Int(labelNumber))
        }
    
     
   
    }
    
}
