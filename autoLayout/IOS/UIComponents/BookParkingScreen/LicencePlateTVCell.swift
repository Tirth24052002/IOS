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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

extension LicencePlateTVCell {
  //  let crossAttr = [NSAttributedStringKey.strikethroughStyle: NSUnderlineStyle.styleSingle.rawValue]
    
}
// MARK: - Extension Upcoming Model
extension LicencePlateTVCell {
    func configCell(info: UpcomingBookingModel) {
        
        lblStarTime.text = info.startTime
        let attributedString = NSMutableAttributedString.init(string: info.rentalID ?? "")
                attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                    NSRange.init(location: 0, length: attributedString.length));
        lblIDName.attributedText = attributedString
        let attributedStringTwo = NSMutableAttributedString.init(string: info.licencePlate ?? "")
                attributedStringTwo.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                    NSRange.init(location: 0, length: attributedStringTwo.length));
        lblNumberPlate.attributedText = attributedStringTwo
    }
}

// MARK: - Extension Expired Model
extension LicencePlateTVCell {
    func configExpiredModel(data: ExpiredBookingModel) {
        lblStarTime.text = data.startTime
        let attributedString = NSMutableAttributedString.init(string: data.rentalID ?? "")
                attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                    NSRange.init(location: 0, length: attributedString.length));
        lblIDName.attributedText = attributedString
        let attributedStringTwo = NSMutableAttributedString.init(string: data.licencePlate ?? "")
                attributedStringTwo.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                    NSRange.init(location: 0, length: attributedStringTwo.length));
    }
}

// MARK: - Extension Parking Space Model
extension LicencePlateTVCell {
    func configParkingMode(data: ParkingSpaceModel) {
        lblStarTime.text = data.startTime
        let attributedString = NSMutableAttributedString.init(string: data.rentalID ?? "")
                attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                    NSRange.init(location: 0, length: attributedString.length));
        lblIDName.attributedText = attributedString
        let attributedStringTwo = NSMutableAttributedString.init(string: data.licencePlate ?? "")
                attributedStringTwo.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range:
                    NSRange.init(location: 0, length: attributedStringTwo.length));
    }
}
