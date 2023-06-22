//
//  TaskAdditionPageVC.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import UIKit

// MARK: - Text Field Padding
class TextFieldWithPadding: UITextField {
    var textPadding = UIEdgeInsets(
        top: 5,
        left: 20,
        bottom: 5,
        right: 20
    )

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.textRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        let rect = super.editingRect(forBounds: bounds)
        return rect.inset(by: textPadding)
    }
}

// MARK: - View Controller
class TaskAdditionPageVC: UIViewController {
    
    // MARK: - Variables
    private var refreshData: UIRefreshControl!
    private var arrdata: [CollectionDataModel]!
    private var arrTableData = TabelDataModel.getTableData()
    private var searchResult: [Any] = []
    private var isSearchActive: Bool = false
    private var seachResultForTableView: [TabelDataModel] = []
    
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
    
    @objc func loadApi() {
        print("The data refershed")
        self.refreshData.endRefreshing()
    }
    
    // MARK: - Function
    func addlestImageTo(txtField: UITextField, andImage img: UIImage) {
        let leftImage = UIImageView()
        let image1 = UIImage(named: "searchIcon")
        leftImage.image = image1
        let contentView = UIView()
        contentView.addSubview(leftImage)
        contentView.frame = CGRectMake(0, 0, 15, 15)
        leftImage.frame = CGRectMake(20, 0, 15, 15)
        txtField.leftView = contentView
        txtField.leftViewMode = UITextField.ViewMode.always
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - IB Action
    @IBAction func btnBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func searchHandler(_ sender: UITextField) {
//        if let searchText = sender.text {
//           // searchResult = arrdata.filter { $0.data?.lowercased().contains(searchText.lowercased()) ?? false}
//          //  searchResult = arrdata.filter { $0.data?.contains(searchText.l)}
//            lblTableViewContents.reloadData()
//        }
    }
    
}

// MARK: - Extension
extension TaskAdditionPageVC {
    func implementation() {
        arrdata = CollectionDataModel.collectionData()
        self.refreshData = UIRefreshControl()
        self.refreshData.tintColor = .systemYellow
        self.refreshData.addTarget(self, action: #selector(loadApi), for: .valueChanged)
        self.lblTableViewContents.addSubview(refreshData)
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
        textFieldSearchBar.layer.shadowColor = UIColor.black.cgColor
        textFieldSearchBar.layer.shadowOpacity = 0.35
        textFieldSearchBar.layer.shadowOffset = CGSize(width: 2, height: 2)
        textFieldSearchBar.layer.shadowRadius = 2.5
        textFieldSearchBar.backgroundColor = UIColor.white
        textFieldSearchBar.attributedPlaceholder = NSAttributedString(
            string: "Try to find...",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray]
        )
        lblcollectionView.layer.cornerRadius = 10
        textFieldSearchBar.delegate = self
    }
}

// MARK: - Collection View Data Source
extension TaskAdditionPageVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // arrdata.append(arrTableData.)
        return isSearchActive == true ? searchResult.count : arrdata.count
    }
}

// MARK: - Collection View Delegate
extension TaskAdditionPageVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.lblcollectionView.dequeueReusableCell(
            withReuseIdentifier: "DataCollectionViewCell",
            for: indexPath) as? DataCollectionViewCell else {
            return UICollectionViewCell()
        }
        guard let indexData = isSearchActive == true ? searchResult[indexPath.row]
                as? CollectionDataModel : arrdata[indexPath.row] else {
            return UICollectionViewCell()
        }
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
        return isSearchActive == true ? seachResultForTableView.count : arrTableData.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let additionCell = tableView.dequeueReusableCell(
            withIdentifier: "TableViewCell") as? TableViewCell else {
            return UITableViewCell()
        }
        let indexData = isSearchActive == true
        ? seachResultForTableView[indexPath.row]
        : arrTableData[indexPath.row]
        additionCell.configCell(indexData, indexPath: indexPath)
        additionCell.delegate = self
        return additionCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

// MARK: - Tableview cell delegate
extension TaskAdditionPageVC: FlowListTVCellDelegates {
    func plusTapAction(indexPath: IndexPath, data: TabelDataModel) {
        seachResultForTableView.removeAll(where: {$0 == data})
        arrTableData.removeAll(where: {$0 == data})
        arrdata.append(.init(data: data.fieldName))
        lblTableViewContents.reloadData()
        lblcollectionView.reloadData()
    }
}

// MARK: - Text Field Delegate
extension TaskAdditionPageVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchResult = textField.text?.isEmpty ?? false ? arrdata : arrdata.filter { $0.data?.lowercased().contains(textField.text?.lowercased() ?? "" )
            ?? false }
        if textField.text?.isEmpty ?? true {
            isSearchActive = false
        } else {
            isSearchActive = true
        }
        print(searchResult.count)
        seachResultForTableView = textField.text?.isEmpty ?? false ? arrTableData : arrTableData.filter { $0.fieldName?.lowercased().contains(textField.text?.lowercased() ?? "") ?? false }
//        if seachResultForTableView.isEmpty {
//            isSearchActive = false
//        } else {
//            isSearchActive = true
//        }
        print(seachResultForTableView.count)
        self.lblcollectionView.reloadData()
        self.lblTableViewContents.reloadData()
        print(textField.text ?? "")
        return true
    }
}

// MARK: - Table View Delegate 
extension TaskAdditionPageVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //arrdata.append(contentsOf: arrTableData)
    }
}
