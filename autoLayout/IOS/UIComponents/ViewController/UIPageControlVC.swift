//
//  UIPageControlVC.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UIPageControlVC: UIViewController {
    
    // MARK: - Variables
    var pageControlIndex = 0
    
    // MARK: - IB Outlet
    @IBOutlet weak var pageControler: UIPageControl!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IB Action
    @IBAction func btnPageControl(_ sender: Any) {
        pageControler.currentPage = 0
        pageControler.numberOfPages = 10
        pageControlIndex = pageControlIndex + 1
        pageControler.currentPage = pageControlIndex
    }
}
