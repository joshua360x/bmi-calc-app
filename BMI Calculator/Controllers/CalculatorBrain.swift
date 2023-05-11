//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joshua Williams on 5/10/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    
    
    
    
    var bmiGlobal: BMI?

 
    
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = round(((weight / (height*height)) * 10) / 10)
        
        if bmi < 18.5 {
            bmiGlobal = BMI(value: bmi, advice: "Eat more food, it helps", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))

        } else if (24.9 > bmi && bmi > 18.50) {
            bmiGlobal = BMI(value: bmi, advice: "Eat normal food, it helps", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmiGlobal = BMI(value: bmi, advice: "Eat less food, it helps", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
         
        
    }
    
    func getBMIValue() -> Float {
        return bmiGlobal?.value ?? 0.0
    }
    
    
    
    func getAdvice() -> String {
        return bmiGlobal?.advice ?? "No Advice at this time"
    }
    
    func getColor() -> UIColor {
        return bmiGlobal?.color ?? #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
    }

}

