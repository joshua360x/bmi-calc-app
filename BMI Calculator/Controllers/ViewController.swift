//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        print(round(sender.value * 100) / 100)
        heightLabel.text = String(round(sender.value * 100) / 100)

    }

    @IBAction func weightSliderChange(_ sender: UISlider) {
        print(Int(round(sender.value)))
        weightLabel.text = String(Int(round(sender.value)))

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    



}

