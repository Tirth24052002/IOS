//
//  UITextFieldVC.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class UITextFieldVC: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var txtFieldName: CustomTextField!
    
    // MARK: - Activity Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFieldName.layer.borderColor = UIColor.red.cgColor
        txtFieldName.layer.borderWidth = 1
    }
}
