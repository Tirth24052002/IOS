//
//  UISliderVC.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UISliderVC: UIViewController {
    
    // MARK: - Variables    
    let no = 5
    
    // MARK: - Outlets
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var sliderAge: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB Actions   
    @IBAction func ageValueChanged(_ sender: UISlider) {
        print(sender.value)
        lblAge.text = "\(Int(sender.value))"
    }
}
