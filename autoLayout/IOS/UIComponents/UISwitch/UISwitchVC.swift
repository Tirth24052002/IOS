//
//  UISwitchVC.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UISwitchVC: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var swtColor: UISwitch!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IB Action
    @IBAction func switchDidChange(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .red
        } else {
            view.backgroundColor = .green
        }
    }
}
