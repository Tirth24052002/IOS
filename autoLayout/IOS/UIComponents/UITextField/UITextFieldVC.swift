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
    @IBOutlet weak var imgAdd: UIImageView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFieldName.layer.borderColor = UIColor.red.cgColor
        txtFieldName.layer.borderWidth = 1
        txtFieldName.addDoneButtonOnKeyboard()
        let imageName = "lion"
        let image = UIImage(named: imageName)
//        let imageView = UIImageView(image: image!)
//        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
//        imageView.contentMode = .scaleAspectFit
//        imgAdd.addSubview(imageView)
        imgAdd.image = image
        txtFieldName.attributedPlaceholder = NSAttributedString(
            string: "Placeholder Text",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.blue])
    }
}

