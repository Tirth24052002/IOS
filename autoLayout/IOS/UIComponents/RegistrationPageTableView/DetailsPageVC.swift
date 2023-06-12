//
//  DetailsPageVC.swift
//  IOS
//
//  Created by Tirth Purohit on 12/06/23.
//

import UIKit

class DetailsPageVC: UIViewController {

    // MARK: - Variables
    var perName = ""
    var credits = ""
    var location = ""
    var titleoffield = ""
    
    // MARK: - IB Outlets
    @IBOutlet weak private var lblPersonName: UILabel!
    @IBOutlet weak private var lblPersonCredit: UILabel!
    @IBOutlet weak private var lblPersonLocation: UILabel!
    @IBOutlet weak private var lblTitle: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPersonName.text = perName
        lblPersonCredit.text = credits
        lblPersonLocation.text = location
        lblTitle.text = titleoffield
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}
