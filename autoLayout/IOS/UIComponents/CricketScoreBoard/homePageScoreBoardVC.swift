//
//  homePageScoreBoardVC.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import UIKit

class homePageScoreBoardVC: UIViewController {

    // MARK: - Variables
    private var tableDataArray = AddingScoreModal.configScore()
    
    // MARK: - IB Outlets
    @IBOutlet weak var scoreContentTableView: UITableView!
    @IBOutlet weak var lblScore: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreContentTableView.dataSource = self
        scoreContentTableView.delegate = self
        scoreContentTableView.register(UINib(nibName: "ScoreAddingTableViewCell", bundle: nil),
                                      forCellReuseIdentifier: "ScoreAddingTableViewCell")
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
}

// MARK: - Table View Data Source
extension homePageScoreBoardVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.scoreContentTableView.dequeueReusableCell(withIdentifier: "ScoreAddingTableViewCell",
                                                                        for: indexPath) as? ScoreAddingTableViewCell else {
            return UITableViewCell()
            
        }
        let indexData = tableDataArray[indexPath.row]
        cell.configCell(indexData)
        return cell
    }
    
}

// MARK: - Table View Delegate
extension homePageScoreBoardVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: - Tableview cell delegate
extension homePageScoreBoardVC: AdditionOperationDelegate {
    func plusbtnFunction(indexPath: IndexPath, data: AddingScoreModal) {
        lblScore.text = data.theScoreToAdd
        scoreContentTableView.reloadData()
        lblScore.reloadInputViews()
    }
//    func plusTapAction(indexPath: IndexPath, data: TabelDataModel) {
//        seachResultForTableView.removeAll(where: {$0 == data})
//        arrTableData.removeAll(where: {$0 == data})
//        arrdata.append(.init(data: data.fieldName))
//        lblTableViewContents.reloadData()
//        lblcollectionView.reloadData()
//    }
}
