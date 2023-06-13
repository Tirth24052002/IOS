//
//  TableViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - IB Outlets
    @IBOutlet weak var lblTableViewContent: UIView!
    @IBOutlet weak var lblFieldName: UILabel!
    @IBOutlet weak var lblPlusBtn: UIButton!
    @IBOutlet weak var lblTime: UILabel!
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func btnPlusButton(_ sender: UIButton) {
    }
    
}

// MARK: - Extension
extension TableViewCell {
    func configCell(_ data: TabelDataModel) {
        lblFieldName.text = data.fieldName
        lblTime.text = data.pertime
    }
}
