//
//  UISegmentedControlVC.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UISegmentedControlVC: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - IB Action
    @IBAction func btnImageChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            imageView.image = UIImage(named: "lion")
            sender.selectedSegmentTintColor = .orange
            break
        case 1:
            imageView.image = UIImage(named: "koala")
            sender.selectedSegmentTintColor = .systemCyan
            break
        case 2:
            imageView.image = UIImage(named: "elephant")
            sender.selectedSegmentTintColor = .blue
        case 3:
            imageView.image = UIImage(named: "fox")
            sender.selectedSegmentTintColor = .yellow
        default:
            imageView.image = UIImage(named: "koala")
            sender.selectedSegmentTintColor = .gray
        break
        }
    }
}
