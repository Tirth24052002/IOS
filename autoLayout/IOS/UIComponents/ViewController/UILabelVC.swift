//
//  UILabelVC.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class UILabelVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEdit: UILabel!
    @IBOutlet weak var lblCustom: UILabel!
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
    
    func setupViews() {
        let quote = "Hello World!"
        let font = UIFont.systemFont(ofSize: 50)
        let attributes = [NSAttributedString.Key.font: font]
        let attributedQuote = NSAttributedString(string: quote, attributes: attributes)
        lblName.attributedText = attributedQuote
        
        let myString = "Swift Attributed String"
        let myAttribute = [ NSAttributedString.Key.foregroundColor: UIColor.blue ]
  
        
        
        let myCutom = "The Cutomized String"
        let colorSet = [NSAttributedString.Key.foregroundColor: UIColor.red]
        let addColor = NSAttributedString(string: myCutom, attributes: colorSet)
        lblCustom.attributedText = addColor
        
        let fontChange = [NSAttributedString.Key.font : UIFont(name: "Chalkduster" , size: 20) ]
        
        let myAttrString = NSAttributedString(string: myCutom, attributes: fontChange)
        lblEdit.attributedText = myAttrString
    }
}
