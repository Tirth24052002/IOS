//
//  RegistrationPageVC.swift
//  IOS
//
//  Created by Tirth Purohit on 09/06/23.
//

import UIKit

class RegistrationPageVC: UIViewController {
    
    // MARK: - Variables
    private var dataModel = RegistrationModel.getUserData()
    
    // MARK: - IB Outlets
    @IBOutlet private var viewHeader: UIView!
    @IBOutlet private weak var tblContents: UITableView!
    @IBOutlet private weak var viewInHeader: UIView!
    @IBOutlet private weak var lblHeader: UILabel!
    
    // MARK: - View Life Cycle.
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
}

// MARK: - Functions
extension RegistrationPageVC {
    private func initialSetup() {
        tblContents.dataSource = self
        tblContents.delegate = self
        tblContents.tableHeaderView = viewHeader
        tblContents.register(UINib(nibName: "RegistrationTableViewCell",
                                   bundle: nil),
                             forCellReuseIdentifier:"RegistrationTableViewCell")
    }
}

// MARK: - Table View Data Source
extension RegistrationPageVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
                   IndexPath) -> UITableViewCell {
        guard let datacell = tableView.dequeueReusableCell(withIdentifier:
                                                            "RegistrationTableViewCell")
                as? RegistrationTableViewCell else {
            return UITableViewCell()
        }
        let indexData = dataModel[indexPath.row]
        datacell.configCell(data: indexData)
        return datacell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

// MARK: -  Table View Delegate
extension RegistrationPageVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let filteredData = dataModel.filter({$0.isSelected == true})
        print(indexPath.row)
        print(filteredData.count)
//        print(indexPath.description)
        
        let detailsPageStoryboard = UIStoryboard(name: "RegistrationPage", bundle: nil)
        guard let detailsPageVC =  detailsPageStoryboard.instantiateViewController(withIdentifier:
                                                                                "DetailsPageVC")
                as? DetailsPageVC else {
            return
        }
        let indexData = dataModel[indexPath.row]
        detailsPageVC.perName =  indexData.personName ?? ""
        detailsPageVC.location = indexData.timePeriod ?? ""
        detailsPageVC.credits = indexData.credits ?? ""
        detailsPageVC.titleoffield = indexData.personField ?? ""
        navigationController?.pushViewController(detailsPageVC , animated: true)
    }
}
