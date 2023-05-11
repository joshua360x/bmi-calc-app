//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        print(round(sender.value * 100) / 100)
        heightLabel.text = "\(String(round(sender.value * 100) / 100))m"

    }

    @IBAction func weightSliderChange(_ sender: UISlider) {
        print(Int(round(sender.value)))
        weightLabel.text = "\(String(Int(round(sender.value))))kg"

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResults" , sender: self)
//        print(bmi)
//        let secondVC = SecondViewController()
//        secondVC.bmiValue = String(bmi)
        
        
        

//        self.present()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        sender.destination
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = String(calculatorBrain.getBMIValue())
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.view.backgroundColor = calculatorBrain.getColor()

        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    



}

