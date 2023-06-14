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
    @IBOutlet weak var btnReview: UIButton!
    
    // MARK: - View Life Cycle
    override class func awakeFromNib() {
        super.awakeFromNib()
    }
}

// MARK: - Extension
extension DataCollectionViewCell {
    func configCell(data: CollectionDataModel) {
        lblDataInCollection.text = data.data
        btnReview.layer.cornerRadius = 5
        collectionViewContents.layer.cornerRadius = 10
        collectionViewContents.backgroundColor = .white
        //collectionViewContents.backgroundColor = .red
    }
}
