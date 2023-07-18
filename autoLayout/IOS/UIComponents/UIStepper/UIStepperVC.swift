//
//  UIStepperVC.swift
//  IOS
//
//  Created by Tirth Purohit on 07/06/23.
//

import UIKit

class UIStepperVC: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var lblStep: UILabel!
    @IBOutlet weak var stpStep: UIStepper!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        stpStep.value = 0
        stpStep.maximumValue = 50
        stpStep.stepValue = 1
    }
    
    // MARK: - IB Action
    @IBAction func stepper(_ sender: UIStepper) {
        lblStep.text = "\(sender.value)"
        
    }
    
}
