//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joshua Williams on 5/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation


struct CalculatorBrain {
    
    
    
    
    
    var bmiGlobal: Float?

 
    
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = round(((weight / (height*height)) * 10) / 10)
        bmiGlobal = bmi
         
        
    }
    
    func getBMIValue() -> Float {
        return bmiGlobal ?? 0.0
    }
    
    

}

