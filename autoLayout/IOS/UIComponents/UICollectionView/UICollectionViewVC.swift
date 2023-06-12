//
//  UICollectionViewVCViewController.swift
//  IOS
//
//  Created by Tirth Purohit on 12/06/23.
//

import UIKit

class UICollectionViewVC: UIViewController {
    
    // MARK: - Variables
    private var  gridData = ["Zero", "One", "Two", "Three","Four", "Five", "Six", "Seven", "Eight", "Nine"]
    private var gridImage = ["lion", "fox", "elephant", "koala"]
    
    // MARK: - IB Outlets
    @IBOutlet weak var gridCollection: UICollectionView!

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        gridCollection.dataSource = self
        gridCollection.delegate = self
    }
}

// MARK: - Extension Collection View Data Source
extension UICollectionViewVC: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gridData.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.gridCollection.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        cell.lblCollectionText.text = gridData[indexPath.row]
        cell.lblCollectionText.textColor = .green
        cell.lblCollectionText.shadowOffset = CGSize(width: 6, height: 6)
        cell.lblCollectionText.shadowColor = .black
        return cell
    }
}

// MARK: - Extension Colleciton View Delegate
extension UICollectionViewVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

extension UICollectionViewVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width/2 - 10   , height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 1, left: 1, bottom: 5, right: 1)
    }
}
