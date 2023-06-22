//
//  LicencePlateTVCell.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import UIKit

class LicencePlateTVCell: UITableViewCell {

    // MARK: - IB Outlet
    @IBOutlet weak var lblIDName: UILabel!
    @IBOutlet weak var lblStarTime: UILabel!
    @IBOutlet weak var lblNumberPlate: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension LicencePlateTVCell {
    func configCell(info: UpcomingBookingModel) {
        lblIDName.text = info.rentalID
        lblStarTime.text = info.startTime
        lblNumberPlate.text = info.licencePlate
    }
}
