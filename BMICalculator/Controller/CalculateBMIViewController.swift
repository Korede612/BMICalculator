//
//  ViewController.swift
//  BMICalculator
//
//  Created by Oko-osi Korede on 29/01/2024.
//

import UIKit

class CalculateBMIViewController: UIViewController {

    @IBOutlet weak var weightLaebel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heighSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculateBrain = CalculateBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLaebel.text = String(format: "%.0f", sender.value) + "Kg"
    }
    @IBAction func calculateButtonTapped(_ sender: UIButton) {
        calculateBrain.calculateBMI(
            weight: weightSlider.value,
            height: heighSlider.value)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            guard let destinationVC = segue.destination as? ResultViewController else {
                return
            }
            destinationVC.bmi = calculateBrain.bmi
        }
    }
}

