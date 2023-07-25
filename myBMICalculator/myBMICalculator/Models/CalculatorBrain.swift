//
//  CalculatorBrain.swift
//  myBMICalculator
//
//  Created by Paweł Ferenc on 24/07/2023.
//

import Foundation

import UIKit

struct CalculatorBrain {
    
    var BMIValue: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue < 18.5 {
            BMIValue = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            BMIValue = BMI(value: bmiValue, advice: "You're healthy", color: UIColor.green)
        } else {
            BMIValue = BMI(value: bmiValue, advice: "eat less pies", color: UIColor.red)
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", BMIValue?.value ?? 0.0)
        return bmiString
    }
    
    func getAdvice() -> String {
        let bmiAdvice = BMIValue?.advice ?? "Advice"
        return bmiAdvice
    }
    
    func getColor() -> UIColor {
        let BMIcolor = BMIValue?.color
        return BMIcolor!
    }
    
    
}
