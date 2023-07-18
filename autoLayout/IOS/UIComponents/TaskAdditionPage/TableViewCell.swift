//
//  TableViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import UIKit

// MARK: - Protocol
protocol FlowListTVCellDelegates: AnyObject {
    func plusTapAction(indexPath: IndexPath, data: TabelDataModel)
}

class TableViewCell: UITableViewCell {

    // MARK: - Variable
    var delegate: FlowListTVCellDelegates?
    var indexPath: IndexPath?
    var indexData: TabelDataModel?
    
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
    
    // MARK: - IB Action
    @IBAction func btnPlusButton(_ sender: UIButton) {
        guard let indexData, let indexPath else {
            return
        }
        delegate?.plusTapAction(indexPath: indexPath, data: indexData)
    }
}

// MARK: - Extension
extension TableViewCell {
    func configCell(_ data: TabelDataModel, indexPath: IndexPath) {
        //, _ arr: [TabelDataModel]) {
        self.indexPath = indexPath
        indexData = data
        lblFieldName.text = data.fieldName
        lblTime.text = data.pertime
      //  var arrDar = [CollectionDataModel]
       //arr[0].data?.append(lblFieldName.text ?? "")
    }
}
