//
//  DataCollectionViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import UIKit

class DataCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IB Outlets
    @IBOutlet weak var lblDataInCollection: UILabel!
    @IBOutlet weak var collectionViewContents: UIView!
    
    // MARK: - View Life Cycle
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Extension
extension DataCollectionViewCell {
    func configCell(data: CollectionDataModel) {
        lblDataInCollection.text = data.data
        collectionViewContents.layer.cornerRadius = 20
        collectionViewContents.layer.masksToBounds = true
        //collectionViewContents.backgroundColor = .red
    }
}
