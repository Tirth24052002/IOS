//
//  UIButtonVC.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class UIButtonVC: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var btntap: UIButton!
    @IBOutlet weak var btnTapIn: UIButton!
    @IBOutlet weak var imgTemp: UIImageView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        btntap.layer.cornerRadius = 20
        btntap.clipsToBounds = true
        btntap.setTitle("Hold That", for: .highlighted)
        btntap.setTitle("Selected", for: .selected)
        
        btnTapIn.setTitle("Tapping In", for: .normal)
        btnTapIn.setTitle("Button Selected", for: .highlighted)
        
        imgTemp.layer.cornerRadius = imgTemp.frame.size.height/2
    }

    // MARK: - IB Action
    @IBAction func btnTapAction(_ sender: UIButton) {
        print("The Button is working")
    }
}
