//
//  BookParkingVC.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import UIKit

class BookParkingVC: UIViewController {
    
    // MARK: - Variable
    var upcomningModelArr = UpcomingBookingModel.getUserData()
    var expireModelArr = ExpiredBookingModel.getUserData()
    
    // MARK: - IB Outlets
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var tableViewContents: UITableView!
    @IBOutlet weak var tableViewHeader: UIView!
    
    var selectedSegmentIndex = 0
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        implementaion()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func btnBackBtn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}

// MARK: - Function
extension BookParkingVC {
    func implementaion() {
        tableViewHeader.frame = CGRect(x: 0.0, y: 0.0, width: tableViewHeader.frame.size.width , height: tableViewHeader.frame.size.height )
        tableViewContents.tableHeaderView = tableViewHeader
        
        tableViewContents.register(UINib(nibName: "LicencePlateTVCell", bundle: nil),
                                      forCellReuseIdentifier: "LicencePlateTVCell")
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.selected)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: UIControl.State.normal)
        tableViewContents.dataSource = self
        tableViewContents.delegate = self
    }
}

// MARK: - Table View Data Source
extension BookParkingVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomningModelArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableViewContents.dequeueReusableCell(withIdentifier: "LicencePlateTVCell",
                                                                    for: indexPath) as? LicencePlateTVCell else {
            return UITableViewCell()
            
        }
        if segmentControl.isEnabledForSegment(at: 0) {
            let indexData = upcomningModelArr[indexPath.row]
            cell.configCell(info: indexData)
            tableViewContents.reloadData()
            return cell
            
        } else if segmentControl.isEnabledForSegment(at: 1) {
            let indexData = expireModelArr[indexPath.row]
            tableViewContents.reloadData()
            return cell
        }
        return cell
    }
}

// MARK: - Table View Delegate
extension BookParkingVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}


