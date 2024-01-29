//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: BMI?
    @IBOutlet weak var suggestionLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi?.getBMIValue()
        view.backgroundColor = bmi?.getColor().color
        suggestionLabel.text = bmi?.getAdvice()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculateTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    deinit {
        print("Result is Off")
    }
    
}
