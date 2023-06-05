//
//  CustomTextField.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class CustomTextField: UITextField {
    
    @IBInspectable
    public var textPadding: CGFloat = 2.0 {
        didSet{
        }
    }
    let padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
}
