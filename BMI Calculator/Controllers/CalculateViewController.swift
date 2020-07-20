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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let sliderValue = String(format: "%.2f", sender.value)
        heightLabel.text = sliderValue + "m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let sliderValue = String(format: "%.0f", sender.value)
        weightLabel.text = sliderValue + "kg"
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height, weight)
        
        self.performSegue(withIdentifier: "goToResult",sender: self)
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
    if segue.identifier == "goToResult"{
        let destinationVC = segue.destination as! ResultViewController
        destinationVC.bmi =  calculatorBrain.getBMIValue()
        destinationVC.color = calculatorBrain.getColor()
        destinationVC.advice = calculatorBrain.getAdvice()
        
        }
    }
    
}

