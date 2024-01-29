//
//  BMI.swift
//  BMICalculator
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import Foundation

struct BMI {
    let value: Float
    let advice: String
    let color: BMIColor
    
    func getColor() -> BMIColor {
        return color
    }
    
    func getAdvice() -> String {
        return advice
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", value)
    }
}
