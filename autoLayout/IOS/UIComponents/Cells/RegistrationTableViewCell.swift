//
//  RegistrationTableViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 09/06/23.
//

import UIKit

class RegistrationTableViewCell: UITableViewCell {

    // MARK: - IB Outlets
    @IBOutlet private weak var lblContenetView: UIView!
    @IBOutlet weak var lblField: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblCredit: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet private weak var lblAddress: UILabel!
    @IBOutlet private weak var viewInContentView: UIView!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
//        self.viewInContentView.layer.shadowOpacity = 0.90
//        self.viewInContentView.layer.shadowOffset = CGSize(width: 0, height: 20)
//        self.viewInContentView.layer.shadowRadius = 2
//        self.viewInContentView.layer.masksToBounds = true
////        applyShadow(cornerRadius: 10)
        self.viewInContentView.layer.cornerRadius = 8

        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

// MARK: - Extension
extension RegistrationTableViewCell {
    func configCell(data: RegistrationModel) {
        lblField.text = data.personField
        lblName.text = data.personName
        lblTime.text = data.timePeriod
        lblCredit.text = data.credits
        lblAddress.text = data.personAddress
        
    }
}
