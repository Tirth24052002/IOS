//
//  UIButtonVC.swift
//  IOS
//
//  Created by Tirth Purohit on 05/06/23.
//

import UIKit

class UIButtonVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var btntap: UIButton!
    @IBOutlet weak var btnTapIn: UIButton!
    @IBOutlet weak var imgTemp: UIImageView!
    @IBOutlet weak var imgSet: UIImageView!
    @IBAction func didEndOnexit(_ sender: Any) {
      print("didEndOnexit")
    }
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addAttributes()
    }
    
    // MARK: - Function
    func addAttributes() {
        btntap.layer.cornerRadius = 20
        btntap.clipsToBounds = true
        btntap.setTitle("Hold That", for: .highlighted)
        btntap.setTitle("Selected", for: .selected)
        btntap.setTitleColor(UIColor.black, for: .highlighted)
        btnTapIn.setTitle("Tapping In", for: .normal)
        btnTapIn.setTitle("Button Selected", for: .highlighted)
        imgTemp.layer.cornerRadius = imgTemp.frame.size.height/2
    }
    
    // MARK: - IB Actions
    @IBAction func editingChanged(_ sender: Any) {
        print("editingChanged")
    }
    
    @IBAction func editingDidBegin(_ sender: Any) {
        print("editingDidBegin")
    }
    
    @IBAction func editingDidEnd(_ sender: Any) {
        print("editingDidEnd")
    }
    
    @IBAction func priaryActionTriggred(_ sender: UIButton) {
        print("priaryActionTriggred")
    }
    
    @IBAction func touchCancel(_ sender: UIButton) {
        print("touchCancel")
    }
    
    @IBAction func touchDown(_ sender: UIButton) {
        print("touchDown")
    }
    
    @IBAction func touchDownRepeat(_ sender: UIButton) {
        print("touchDownRepeat")
    }
    
    @IBAction func touchDragEnter(_ sender: UIButton) {
        print("touchDragEnter")
    }
    
    @IBAction func touchDragExit(_ sender: Any) {
        print("touchDragExit")
    }
    
    @IBAction func touchDragInside(_ sender: UIButton) {
        print("touchDragInside")
    }
    
    @IBAction func touchdragOutside(_ sender: UIButton) {
        print("touchdragOutside")
    }
    
    @IBAction func touchUpinside(_ sender: UIButton) {
        print("touchUpinside")
    }
    
    @IBAction func touchUpOutside(_ sender: UIButton) {
        print("touchUpOutside")
    }
    
    @IBAction func ValueChanged(_ sender: UIButton) {
        print("ValueChanged")
    }
    @IBAction func btnTapAction(_ sender: UIButton) {
        print("The Button is working")
    }
}
