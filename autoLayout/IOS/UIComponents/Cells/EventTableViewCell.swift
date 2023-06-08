//
//  EventTableViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 08/06/23.
//

import UIKit

class EventTableViewCell: UITableViewCell {

    // MARK: - IB Outlets
    @IBOutlet weak var lblText: UILabel!
    
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
