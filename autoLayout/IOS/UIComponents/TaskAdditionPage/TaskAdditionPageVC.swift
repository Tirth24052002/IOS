//
//  TaskAdditionPageVC.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import UIKit

class TaskAdditionPageVC: UIViewController {
    
    // MARK: - Variables
    private var arrdata = CollectionDataModel.collectionData()
    private var arrTableData = TabelDataModel.getTableData()
    
    // MARK: - IB Outlets
    @IBOutlet weak var lblWelcomeBack: UILabel!
    @IBOutlet weak var lblPersonName: UILabel!
    @IBOutlet weak var imgPersonImage: UIImageView!
    @IBOutlet weak var lblSearchBar: UISearchBar!
    @IBOutlet weak var lblcollectionView: UICollectionView!
    @IBOutlet weak var lblTableViewContents: UITableView!

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        lblcollectionView.dataSource = self
        lblcollectionView.delegate = self
        
        lblTableViewContents.dataSource = self
       // lblTableViewContents.delegate = self
        lblTableViewContents.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
            implementation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - IB Action
    @IBAction func btnBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
extension TaskAdditionPageVC {
    func implementation() {
        lblSearchBar.searchTextField.backgroundColor = .white
        lblSearchBar.barTintColor = .systemYellow
        lblSearchBar.layer.shadowColor = UIColor.black.cgColor
        lblSearchBar.layer.shadowOpacity = 0.25
        lblSearchBar.layer.shadowOffset = CGSize(width: 2, height: 2)
        lblSearchBar.layer.shadowRadius = 5
        
       // btnReviewButton.layer.
    }
}

// MARK: - Collection View Data Source
extension TaskAdditionPageVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrdata.count
    }
}

// MARK: - Collection View Delegate
extension TaskAdditionPageVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.lblcollectionView.dequeueReusableCell(withReuseIdentifier: "DataCollectionViewCell", for: indexPath) as? DataCollectionViewCell else {
            return UICollectionViewCell()
        }
        let indexData = arrdata[indexPath.row]
        cell.configCell(data: indexData)
        return cell
    }

}

// MARK: - Collection View Flow Layout
extension TaskAdditionPageVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 125)
    }
}

// MARK: - Table View Data Source
extension TaskAdditionPageVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let additionCell = tableView.dequeueReusableCell(
            withIdentifier: "TableViewCell") as? TableViewCell else {
            return UITableViewCell()
        }
        let indexData = arrTableData[indexPath.row]
        additionCell.configCell(indexData)
        return additionCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

