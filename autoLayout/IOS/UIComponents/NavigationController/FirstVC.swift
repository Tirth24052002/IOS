//
//  NavigationControllerVC.swift
//  IOS
//
//  Created by Tirth Purohit on 21/06/23.
//

import UIKit

class FirstVC: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .red
        navigationController?.toolbar.barTintColor = .purple
    }
    
    // MARK: - IB Action
    @IBAction func goToFirstVC(_ sender: UIStoryboardSegue) {
       
    }
    
    @IBAction func btnMultipleViewControlers(_ sender: UIButton) {
        if let thirdVC = UIStoryboard(name: "FirstVC", bundle: nil).instantiateViewController(withIdentifier: "ThirdVC") as? ThirdVC {
            self.navigationController?.pushViewController(thirdVC, animated: true)
            thirdVC.modalPresentationStyle = .overCurrentContext
        }
    }
    
    @IBAction func btnTabBar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
