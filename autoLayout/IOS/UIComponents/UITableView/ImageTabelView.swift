//
//  ImageTabelView.swift
//  IOS
//
//  Created by Tirth Purohit on 09/06/23.
//

import UIKit

class ImageTabelView: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var tblContents: UITableView!
    @IBOutlet var headerView: UIView!
    @IBOutlet weak var lblheader: UILabel!
    @IBOutlet var footerView: UIView!
    @IBOutlet weak var lblFooter: UILabel!
    
    // MARK: - View Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tblContents.dataSource = self
        
        tblContents.register(UINib(nibName: "ImagViewCell", bundle: nil),
                             forCellReuseIdentifier: "ImagViewCell")
        headerView.frame = CGRect(x: 0.0, y: 0.0, width: tblContents.frame.size.width , height: 50)
        tblContents.tableHeaderView = headerView
        
        footerView.frame = CGRect(x: 0.0, y: 0.0, width: tblContents.frame.size.height, height: 40)
        tblContents.tableFooterView = footerView
    }
}

// MARK: - Extension Image Table View Data Source
extension ImageTabelView: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1 
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
                   IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ImagViewCell")
                as? ImagViewCell else {
            return UITableViewCell()
        }
       return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
