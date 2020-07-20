//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Abdelrahman on 2/19/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float,_ weight:Float) {
        let bmiValue = weight / (height * height)
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat more!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1) )
        }else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        }
    }
    func getBMIValue() -> String {
        let bmiToStr = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToStr
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice!"
    }
    func getColor () -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
