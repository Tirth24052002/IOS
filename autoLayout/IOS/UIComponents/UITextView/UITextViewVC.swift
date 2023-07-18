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
        txtView.text = "Placeholder"
        txtView.textColor = UIColor.lightGray
        txtView.becomeFirstResponder()
        txtView.selectedTextRange = txtView.textRange(from: txtView.beginningOfDocument,
                                                      to: txtView.beginningOfDocument)
    }
}

// MARK: - Extension
extension UITextViewVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.backgroundColor = .black
        if textField == txtViewName {
            textField.resignFirstResponder()
        }
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        view.backgroundColor = .gray
        print("textFieldShouldClear")
        return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField) {
        view.backgroundColor = .systemBrown
        print("textFieldDidBeginEditing")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        view.backgroundColor = .systemCyan
        print("textFieldDidEndEditing")
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        view.backgroundColor = .systemMint
        print("textFieldShouldEndEditing")
        return true
    }
    func textFieldDidChangeSelection(_ textField: UITextField) {
        view.backgroundColor = .systemIndigo
        print("textFieldDidChangeSelection")
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        view.backgroundColor = .systemGreen
        print("textFieldShouldBeginEditing")
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        view.backgroundColor = .systemPurple
        print("textFieldDidEndEditing")
    }
}

extension UITextViewVC: UITextViewDelegate {
    func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
        view.backgroundColor = .blue
        print("textViewShouldBeginEditing")
        return true
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        view.backgroundColor = .systemBrown
        print("textViewDidBeginEditing")
    }
    func textViewShouldEndEditing(_ textView: UITextView) -> Bool {
        view.backgroundColor = .green
        print("textViewShouldEndEditing")
        return true
    }
    func textViewDidChange(_ textView: UITextView) {
        view.backgroundColor = .purple
        print("textViewDidChange")
    }
}
