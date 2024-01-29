//
//  CalculateBMI.swift
//  BMICalculator
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import Foundation

struct CalculateBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .underweight)
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .normalweight)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .overweight)
        default:
            break
        }
    }
    
}
