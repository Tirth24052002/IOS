//
//  UITableViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 07/06/23.
//

import UIKit

class UITableViewVC: UIViewController {
    
    // MARK: - Variables
    @IBOutlet weak var tableContents: UITableView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableContents.register(UINib(nibName: "IndexTableViewCell", bundle: nil), forCellReuseIdentifier: "IndexTableViewCell" )
    }
}

// MARK: - UITableview datasource
extension UITableViewVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IndexTableViewCell") else {
            return UITableViewCell()
        }
        return cell
    }
}

// MARK: - UITable viewDelegate
extension UITableViewVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
}

