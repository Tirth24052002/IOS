//
//  SecondVC.swift
//  IOS
//
//  Created by Tirth Purohit on 21/06/23.
//

import UIKit

class SecondVc: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .purple
        navigationController?.toolbar.tintColor = .purple
    }
    
    // MARK: - IB Action
    @IBAction func gotoSecondVC(_ sender: UIStoryboardSegue) {
        
    }
    
    @IBAction func btngotoForthVC(_ sender: UIButton) {
        if let fourthVc = UIStoryboard(name: "FirstVC", bundle: nil)
            .instantiateViewController(withIdentifier: "FourthVC") as? FourthVC {
            self.navigationController?.pushViewController(fourthVc, animated: true)
        }
    }
}
