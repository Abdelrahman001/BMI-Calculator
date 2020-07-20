//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Abdelrahman on 2/18/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmi: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    
    @IBAction func recalculateBtnPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
