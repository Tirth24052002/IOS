//
//  UILabelVC.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class UILabelVC: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddAtrribute: UILabel!
    @IBOutlet weak var lblCustom: UILabel!
    @IBOutlet weak var lblStr: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        setupViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
}
    
// MARK: - Extension
extension UILabelVC {
    func setupViews() {
        let quote = "Hello World!"
        let font = UIFont.italicSystemFont(ofSize: 50)
        let attributes = [NSAttributedString.Key.font: font]
        let attributedQuote = NSAttributedString(string: quote, attributes: attributes)
        lblName.attributedText = attributedQuote
        let myCutom = "The Cutomized String"
        let colorSet = [NSAttributedString.Key.foregroundColor: UIColor.red]
        let addColor = NSAttributedString(string: myCutom, attributes: colorSet)
        lblCustom.attributedText = addColor
        //let fontChange = [NSAttributedString.Key.font: UIFont(name: "Chalkduster", size: 20)]
        let redString = "Programatic string with red color and underline \nform 0 to 18 position"
              let attrs = [NSAttributedString.Key.foregroundColor: UIColor.red]
              let attrMyString = NSMutableAttributedString(string: redString, attributes: attrs)
        let myRange = NSRange(location: 0, length: 18)
        attrMyString.addAttributes(
            [NSAttributedString.Key.underlineStyle: NSUnderlineStyle.thick.rawValue,
             NSAttributedString.Key.underlineColor: UIColor.systemBrown],
            range: myRange)
        lblAddAtrribute.attributedText = attrMyString
    }
}
