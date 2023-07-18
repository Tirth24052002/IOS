//
//  UICollectionViewVCViewController.swift
//  IOS
//
//  Created by Tirth Purohit on 12/06/23.
//

import UIKit

class UICollectionViewVC: UIViewController {
    
    // MARK: - Variables
    private var refreshPage: UIRefreshControl!
    private var gridData = ["one", "two", "three",
                            "four", "five", "six",
                            "seve","eight", "nine", "ten"]
    private var addElements = ["eleven", "twelve", "thirteen",
                               "fourteen", "fifteen", "sixteen",
                               "seventeen", "eightteen", "nineteen", "twenty"]
    private var searchResult: [String] = []
    private var isSearchActive: Bool = false
    
    // MARK: - IB Outlets
    @IBOutlet weak var gridCollection: UICollectionView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    // MARK: - IB Action
    @IBAction func btnBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}

// MARK: -  Function
extension UICollectionViewVC {
    @objc func loadData() {
        //sleep(1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5){ [self] in
            //DispatchTime.init(uptimeNanoseconds: 4)
            print("Load Data from Api")
            gridData.append(addElements.first ?? "")
            if !addElements.isEmpty{
                addElements.removeFirst()
                gridCollection.reloadData()
                refreshPage.endRefreshing()
            } else {
                print("All Data is fetched")
               // gridCollection.reloadData()
                refreshPage.endRefreshing()
            }
        }
    }
    
    func initialSetup() {
        searchBar.searchTextField.addDoneButtonOnKeyboard()
        gridCollection.dataSource = self
        gridCollection.delegate = self
        searchBar.delegate = self
        self.refreshPage = UIRefreshControl()
        self.refreshPage.addTarget(self, action: #selector(loadData), for: .valueChanged)
        //self.refreshPage.perform(#selector(loadData), with: self, afterDelay: 2)
        self.gridCollection.addSubview(refreshPage)
        self.gridCollection.bounces = true
        self.gridCollection.alwaysBounceVertical = true
        self.refreshPage.tintColor = UIColor.red
        self.refreshPage.backgroundColor = UIColor.black
//        searchBar.tintColor = .black
//        self.searchBar.backgroundColor = .white
//        searchBar.barTintColor = .black
        
    }
}

 // MARK: - Extension Collection View Data Source
extension UICollectionViewVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = self.gridCollection.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell",
                                                                 for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.lblCollectionText.text = isSearchActive == true ? searchResult[indexPath.row] : gridData[indexPath.row]
        return cell
    }
    
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return isSearchActive == true ? searchResult.count : gridData.count
    }

}

// MARK: - Extension Colleciton View Delegate
extension UICollectionViewVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

// MARK: - Collection View Flow Layout
extension UICollectionViewVC: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width/2 - 10   , height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 1, left: 1, bottom: 5, right: 1)
    }
}

// MARK: - Search Bar Delegate
extension UICollectionViewVC: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar,
                   textDidChange searchText: String) {
        print(searchText)
        searchResult = searchResult.isEmpty ?
        gridData : gridData.filter { $0.contains(searchText.lowercased())}
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if searchResult.isEmpty {
            isSearchActive = false
        } else {
            isSearchActive = true
        }
        self.gridCollection.reloadData()
    }
}
