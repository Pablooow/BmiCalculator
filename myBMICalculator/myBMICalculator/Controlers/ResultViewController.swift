//
//  ResultViewController.swift
//  myBMICalculator
//
//  Created by Paweł Ferenc on 24/07/2023.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var BMIValue : String?
    var advice : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = BMIValue
        adviceLabel.text = advice
        view.backgroundColor = color
        
    }
    
    @IBAction func recalculateButtonGotPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
