//
//  UISwitchVC.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UISwitchVC: UIViewController {

    @IBOutlet weak var swtColor: UISwitch!
    override func viewDidLoad() {
        // MARK: - View Life Cycle  
        super.viewDidLoad()
    }
    // MARK: - IB Action
    @IBAction func switchDidChange(_ sender: UISwitch){
        if sender.isOn {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .green
        }
    }
}
