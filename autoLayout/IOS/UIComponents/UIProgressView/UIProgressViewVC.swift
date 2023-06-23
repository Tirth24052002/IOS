//
//  UIProgressViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UIProgressViewVC: UIViewController {

    // MARK: - IB Outlet
    @IBOutlet weak var sliderProgress: UIProgressView!
    
    // MARK: - IB Action
    @IBAction func btnProgress(_ sender: Any) {
        sliderProgress.setProgress(sliderProgress.progress + 0.1, animated: true)
    }
    
    // MARK: - View life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
