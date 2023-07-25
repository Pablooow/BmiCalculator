//
//  CalculateViewControler.swift
//  myBMICalculator
//
//  Created by Paweł Ferenc on 24/07/2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func heightSliderValueChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    
    @IBAction func weightSliderValueChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "kg"
    }
    
    @IBAction func calculateButtonGotPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.BMIValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
    
    
}
