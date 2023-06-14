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
    @IBOutlet weak var lblcollectionView: UICollectionView!
    @IBOutlet weak var lblTableViewContents: UITableView!
    @IBOutlet weak var textFieldSearchBar: UITextField!
    @IBOutlet weak var tblViewHeader: UIView!

    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        implementation()
    }
    
    func addlestImageTo(txtField: UITextField, andImage img: UIImage) {
        let leftImageView = UIImageView(frame: CGRect(x: 0.0, y: 0.0,
                                                      width: img.size.width,
                                                      height: img.size.height))
        leftImageView.image = img
        txtField.leftView = leftImageView
        txtField.leftViewMode = .always
        leftImageView.frame = CGRectMake(20, 0, 0, 0)
        
    }
     
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - IB Action
    @IBAction func btnBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - Extension
extension TaskAdditionPageVC {
    func implementation() {
        textFieldSearchBar.addDoneButtonOnKeyboard()
        tblViewHeader.frame = CGRect(x: 0.0,
                                     y: 0.0,
                                     width: lblTableViewContents.frame.size.width ,
                                     height: tblViewHeader.frame.size.height)
        lblTableViewContents.tableHeaderView = tblViewHeader
        guard let lestImage = UIImage(named: "searchIcon") else { return  }
        addlestImageTo(txtField: textFieldSearchBar, andImage: lestImage)
        lblcollectionView.dataSource = self
        lblcollectionView.delegate = self
        lblTableViewContents.dataSource = self
        lblTableViewContents.delegate = self
        lblTableViewContents.register(UINib(nibName: "TableViewCell", bundle: nil),
                                      forCellReuseIdentifier: "TableViewCell")
        textFieldSearchBar.layer.cornerRadius = textFieldSearchBar.frame.height/2
        textFieldSearchBar.clipsToBounds = true
        
//        textFieldSearchBar.layer.shadowColor = UIColor.black.cgColor
//        textFieldSearchBar.layer.shadowOpacity = 0.15
//        textFieldSearchBar.layer.shadowOffset = CGSize(width: 2, height: 2)
//        textFieldSearchBar.layer.shadowRadius = 2.5
//        textFieldSearchBar.backgroundColor = UIColor.white
//        textFieldSearchBar.attributedPlaceholder = NSAttributedString(
//            string: "Try to find...",
//            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
//        )
       // lblcollectionView.layer.cornerRadius = 10
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
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.lblcollectionView.dequeueReusableCell(withReuseIdentifier:
                                                                        "DataCollectionViewCell",
                                                                    for: indexPath)
                as? DataCollectionViewCell else {
            return UICollectionViewCell()
        }
        let indexData = arrdata[indexPath.row]
        cell.configCell(data: indexData)
        return cell
    }

}

// MARK: - Collection View Flow Layout
extension TaskAdditionPageVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView:
                        UICollectionView,
                        layout collectionViewLayout:UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 150)
    }
}

// MARK: - Table View Data Source
extension TaskAdditionPageVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return arrTableData.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
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

// MARK: - Table View Delegate
extension TaskAdditionPageVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
