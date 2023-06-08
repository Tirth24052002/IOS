//
//  UITableViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 07/06/23.
//

import UIKit

class UITableViewVC: UIViewController {
    
    // MARK: - Variables
    var arrCompany = FindJobModel.getCurrentOpening()
    
    // MARK: - IB Outlets
    @IBOutlet weak var tableContents: UITableView!
    @IBOutlet  var viewTblHeader: UIView!
    @IBOutlet weak var lblTblHeader: UILabel!
    @IBOutlet var viewTblFoot: UIView!
    @IBOutlet weak var lblTblFoot: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableContents.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "IndexTableViewCell")
//        tableContents.register(UINib(nibName: "EventTableViewCell", bundle: nil), forCellReuseIdentifier: "EventTableViewCell")
        tableContents.register(UINib(nibName: "CompanyTableViewCell", bundle: nil), forCellReuseIdentifier: "CompanyTableViewCell")
        
//        viewTblHeader.frame = CGRect(x: 0.0, y: 0.0, width: tableContents.frame.size.width , height: 50)
//        tableContents.tableHeaderView = viewTblHeader
//        viewTblFoot.frame = CGRect(x: 0.0, y: 0.0, width: tableContents.frame.size.width , height: 50)
//        tableContents.tableFooterView = viewTblFoot
//          tableContents.sectionHeaderTopPadding = 0.0
    }
    
    // MARK: - IB Action
    @IBAction func btnSubmitAction(_ sender: UIButton) {
        let filteredData = arrCompany.filter({$0.isSelected == true})
        print(filteredData)
        print(filteredData.count)
    }
}

// MARK: - Extension UITableViewDataSource
extension UITableViewVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCompany.count
        //        if section == 0 {
        //            return 50
        //        } else {
        //            return 100
        //        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let companyCell = tableView.dequeueReusableCell(
            withIdentifier: "CompanyTableViewCell") as? CompanyTableViewCell else {
            return UITableViewCell()
        }
        let indexData = arrCompany[indexPath.row]
        companyCell.configCell(data: indexData)
        return companyCell
        //        guard let oddcell = tableView.dequeueReusableCell(withIdentifier: "IndexTableViewCell") as? IndexTableViewCell else {
        //            return UITableViewCell()
        //        }
        //
        //        guard let evencell = tableView.dequeueReusableCell(withIdentifier: "EventTableViewCell") as? EventTableViewCell else {
        //            return UITableViewCell()
        //        }
        //
        //        if indexPath.row % 2 == 0 {
        //            //cell.lblIndx.text = "\(indexPath.row)"
        //            evencell.lblText.text = "Even: \(indexPath.row)"
        //            evencell.backgroundColor = .gray
        //            return evencell
        //        } else {
        //            oddcell.lblIndx.text = "Odd: \(indexPath.row)"
        //            oddcell.backgroundColor = .green
        //            return oddcell
        //        }
        //cell.lblIndx.text = "\(indexPath.row)"
        //return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    //    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    //        return "Section: \(section)"
    //        if section == 0 {
    //            return "Section 0"
    //        } else {
    //            return "Section 1"
    //        }
    //    }
    
    //    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    //        return UITableView.automaticDimension
    //    }
    
    // func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //        let sectionView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: tableView.frame.size.width , height: UITableView.automaticDimension))
    //        tableView.tableHeaderView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 0.0, height: Double.leastNormalMagnitude))
    //        sectionView.backgroundColor = .cyan
    //        return sectionView
    //        return nil
    //    }
}

// MARK: - Extension UITable viewDelegate
extension UITableViewVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let indexData = arrCompany[indexPath.row]
        if indexData.isSelected {
            indexData.isSelected = !indexData.isSelected
            arrCompany[indexPath.row] = indexData
            tableContents.reloadData()
        } else {
            guard arrCompany.filter({$0.isSelected}).isEmpty else {
                return
            }
            indexData.isSelected = !indexData.isSelected
            arrCompany[indexPath.row] = indexData
            tableContents.reloadData()
        }
        
    }
}
