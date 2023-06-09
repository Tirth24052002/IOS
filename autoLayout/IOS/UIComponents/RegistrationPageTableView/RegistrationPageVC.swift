//
//  RegistrationPageVC.swift
//  IOS
//
//  Created by Tirth Purohit on 09/06/23.
//

import UIKit

class RegistrationPageVC: UIViewController {

    // MARK: - Variables
    var dataModel = RegistrationModel.getUserData()
    
    // MARK: - IB Outlets
    @IBOutlet var viewHeader: UIView!
    @IBOutlet weak var tblContents: UITableView!
    @IBOutlet weak var viewInHeader: UIView!
    @IBOutlet weak var lblHeader: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
}

// MARK: - Functions
extension RegistrationPageVC {
    func initialSetup() {
        tblContents.dataSource = self
        tblContents.tableHeaderView = viewHeader
        tblContents.register(UINib(nibName: "RegistrationTableViewCell",
                                   bundle: nil),
                             forCellReuseIdentifier:"RegistrationTableViewCell")
    }
}

// MARK: - Table View Data Source
extension RegistrationPageVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
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

extension RegistrationPageVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let filteredData = dataModel.filter({$0.isSelected == true})
        print(filteredData)
        print(filteredData.count)
        
    }
}
