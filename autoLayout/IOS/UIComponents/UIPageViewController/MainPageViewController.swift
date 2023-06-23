//
//  MainPageViewController.swift
//  IOS
//
//  Created by Tirth Purohit on 07/06/23.
//

import UIKit

class MainPageViewController: UIPageViewController {
    
    // MARK: - Variables
    lazy var orederedViewController: [UIViewController] = [viewControllerWith(name: "BlueVC"),viewControllerWith(name: "RedVC"),viewControllerWith(name: "GreenVC"), viewControllerWith(name: "YellowVC")]
    var isloading: Bool = false
    var currentIndex: Int = 0
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if (!isloading) {
            isloading = true
        }
        setupControllers()
    }
    
    // MARK: - Function
    func viewControllerWith(name: String) -> UIViewController {
        return UIStoryboard(name: "MainPageViewController", bundle: nil).instantiateViewController(withIdentifier: name)
    }
    
    func setupControllers() {
        currentIndex = 0
        let firstViewController = orederedViewController[currentIndex]
        setViewControllers([firstViewController], direction: .forward, animated: false, completion: nil)
    }
}

// MARK: - Extension
extension MainPageViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewCOntrollerIndex = orederedViewController.firstIndex(of: viewController) else {
            return nil
        }
        let previousIndex = viewCOntrollerIndex - 1
        guard previousIndex >= 0 else {
            return nil
        }
        guard orederedViewController.count > previousIndex else {
            return nil
        }
        return orederedViewController[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewCOntrollerIndex = orederedViewController.firstIndex(of: viewController) else {
            return nil
        }
        let nextIndex = viewCOntrollerIndex + 1
        let orderedViewControllerCount = orederedViewController.count
        guard orderedViewControllerCount != nextIndex else {
            return nil
        }
        guard orderedViewControllerCount > nextIndex else {
            return nil
        }
        return orederedViewController[nextIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if let firstViewController = viewControllers?.first, let index = orederedViewController.firstIndex(of: firstViewController) {
            print(index)
        }
    }
    
}
