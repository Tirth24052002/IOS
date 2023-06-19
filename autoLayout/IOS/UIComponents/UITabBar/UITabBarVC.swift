//
//  UiTabBarVC.swift
//  IOS
//
//  Created by Tirth Purohit on 19/06/23.
//

import UIKit

class UITabBarVC: UITabBarController {
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.selectedIndex = 2
        
        //        var vc1 = HomeVC()
        //        var vc2 = MapVC()
        //        self.setViewControllers([vc2, vc1], animated: true)
    }
}
// MARK: - Delegate
extension UITabBarVC: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(viewControllers ?? UIViewController())
    }
}
