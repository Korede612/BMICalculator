//
//  BMIColor.swift
//  BMICalculator
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import UIKit

enum BMIColor {
    case underweight
    case overweight
    case normalweight
    
    var color: UIColor {
        switch self {
        case .underweight:
            return .init(red: 143/255, green: 212/255, blue: 244/255, alpha: 1)
        case .normalweight:
            return .init(red: 191/255, green: 225/255, blue: 158/255, alpha: 1)
        case .overweight:
            return .init(red: 218/255, green: 128/255, blue: 162/255, alpha: 1)
        }
    }
}
