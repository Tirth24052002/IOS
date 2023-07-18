//
//  CompanyTableViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 08/06/23.
//

import UIKit

class CompanyTableViewCell: UITableViewCell {

    // MARK: - IB Outlets
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblCompanyName: UILabel!
    @IBOutlet weak var imgSelected: UIImageView!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        imgSelected.layer.cornerRadius = imgSelected.frame.size.height/2
    }
}

// MARK: - Extension
extension CompanyTableViewCell {
    func configCell(data: FindJobModel) {
        imgLogo.image = UIImage(named: data.imageName ?? "")
        lblCompanyName.text = data.companyName
        
        if data.isSelected {
            //imgSelected.backgroundColor = .red
            imgSelected.image = UIImage(named: "selected")
        } else {
            //imgSelected.backgroundColor = .green
            imgSelected.image = UIImage(named: "deselected")
        }
    }
}
