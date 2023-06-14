//
//  UIScrollViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 07/06/23.
//

import UIKit

class UIScrollViewVC: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var lblName: UITextField!
    @IBOutlet weak var lblEmai: UITextField!

    @IBOutlet weak var lblPassword: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        lblEmai.addDoneButtonOnKeyboard()
        lblName.addDoneButtonOnKeyboard()
        lblPassword.addDoneButtonOnKeyboard()
    }
}
