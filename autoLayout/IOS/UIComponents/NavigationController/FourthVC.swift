//
//  FourthVC.swift
//  IOS
//
//  Created by Tirth Purohit on 21/06/23.
//

import UIKit

class FourthVC: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .gray
        navigationController?.toolbar.barTintColor = .blue
    }
    
    @IBAction func goToFourthVC(_ sender: UIStoryboardSegue) {
        
    }

    @IBAction func btnPoptoRootView(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func btnSecondView(_ sender: UIButton) {
        if let viewcontrollers = navigationController?.viewControllers {
            for viewcontroller in viewcontrollers {
                if viewcontroller.isKind(of: SecondVC.self) {
                    navigationController?.popToViewController(viewcontroller, animated: true)
                }
            }
        }
    }
}
