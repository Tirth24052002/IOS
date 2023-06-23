//
//  BookParkingVC.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import UIKit

class BookParkingVC: UIViewController {
    
    // MARK: - Variables
    private var upcomningModelArr = UpcomingBookingModel.getUserData()
    private var expireModelArr = ExpiredBookingModel.getUserData()
    private var parkingModelArr = ParkingSpaceModel.getUserData()
    private var currentTableView: Int?
    private var selectedSegmentIndex = 0
    
    // MARK: - IB Outlets
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var tableViewContents: UITableView!
    @IBOutlet weak var tableViewHeader: UIView!
    @IBOutlet weak var buttomTabBar: UITabBar!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        implementaion()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func btnBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    // MARK: - IB Action
    @IBAction func segmentControlAction(_ sender: UISegmentedControl) {
        currentTableView = self.selectedSegmentIndex
        tableViewContents.reloadData()
    }
}

// MARK: - Function
extension BookParkingVC {
    func implementaion() {
        currentTableView = 0
        tableViewHeader.frame = CGRect(x: 0.0,
                                       y: 0.0,
                                       width: tableViewHeader.frame.size.width ,
                                       height: tableViewHeader.frame.size.height )
        tableViewContents.tableHeaderView = tableViewHeader
        tableViewContents.register(UINib(nibName: "LicencePlateTVCell",
                                         bundle: nil),
                                      forCellReuseIdentifier: "LicencePlateTVCell")
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white],
                                              for: UIControl.State.selected)
        segmentControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:
                                                UIColor(white: 2, alpha: 0.2)],
                                              for: UIControl.State.normal)
        tableViewContents.dataSource = self
        tableViewContents.delegate = self
    }
}

// MARK: - Table View Data Source
extension BookParkingVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch selectedSegmentIndex {
        case 0:
            return parkingModelArr.count
        case 1:
            return upcomningModelArr.count
        case 2:
            return expireModelArr.count
        default: print("No Array to call")
           return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.tableViewContents.dequeueReusableCell(withIdentifier:
                                                                        "LicencePlateTVCell",
                                                                    for:
                                                                        indexPath) as? LicencePlateTVCell else {
            return UITableViewCell()
            
        }
        switch segmentControl.selectedSegmentIndex {
        case 0:
            let firstSegment = upcomningModelArr[indexPath.row]
            cell.configCell(info: firstSegment)
            return cell
        case 1:
            let secondSegment = expireModelArr[indexPath.row]
            cell.configExpiredModel(data: secondSegment)
            return cell
        case 2:
            let thirdSegment = parkingModelArr[indexPath.row]
            cell.configParkingMode(data: thirdSegment)
            return cell
        default:
            print("Default")
        }
        tableViewContents.reloadData()
        return cell
    }
}

// MARK: - Table View Delegate
extension BookParkingVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
