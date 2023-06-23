//
//  ScoreAddingTableViewCell.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import UIKit

// MARK: - Protocol
protocol AdditionOperationDelegate: AnyObject {
    func plusbtnFunction(indexPath: IndexPath, data: AddingScoreModal)
}

class ScoreAddingTableViewCell: UITableViewCell {

    // MARK: - Variable
    private var indexData: AddingScoreModal?
    private var indexPath: IndexPath?
    
    // MARK: - IB Outlets
    @IBOutlet weak var lblAddingScore: UILabel!
    @IBOutlet weak var btnPlusButton: UIButton!
    @IBOutlet weak var lblScoreToAdd: UILabel!
    var delegate: AdditionOperationDelegate?
    
    // MARK: - View Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func btnAddScore(_ sender: UIButton) {
        
        guard let indexData, let indexPath else {
            return
        }
        delegate?.plusbtnFunction(indexPath: indexPath, data: indexData)
    }
}

// MARK: - Extension
extension ScoreAddingTableViewCell {
    func configCell(_ data: AddingScoreModal) {
        lblAddingScore.text = data.textofScore
        lblScoreToAdd.text = data.theScoreToAdd
    }
}
