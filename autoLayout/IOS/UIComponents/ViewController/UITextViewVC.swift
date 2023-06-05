//
//  UITextViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class UITextViewVC: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var txtView: UITextView!
    @IBOutlet weak var txtViewName: UITextField!
    @IBOutlet weak var lblGreeting: UIView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtView.text = "Here is my bio"
        txtView.layer.borderColor = UIColor.black.cgColor
        txtView.layer.borderWidth = 5
        txtView.addDoneButtonOnKeyboard()
        txtViewName.addDoneButtonOnKeyboard()
    }
}
extension UITextViewVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtViewName {
            textField.resignFirstResponder()
        }
        return true
    }
}

