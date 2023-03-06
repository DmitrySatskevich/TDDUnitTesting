//
//  ViewController.swift
//  TDDUnitTesting
//
//  Created by dzmitry on 6.03.23.
//

import UIKit

class ViewController: UIViewController {

    var number = 0

    func adding(numberOne: Int, numberTwo: Int) -> Int {
        
        number = numberOne + numberTwo
        
        return number
    }
    
    func multiplication(numberOne: Int, numberTwo: Int) -> Int {
        
        number = numberOne * numberTwo
        
        return number
    }
    
    func dividing(numberOne: Double, numberTwo: Double) -> Int {
        
        number = Int(numberOne / numberTwo)
        
        if numberOne == 0 {
            print("На 0 делить нельзя")
        }
        
        return number
    }

}

