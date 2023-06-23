//
//  UIActivityIndicatorVC.swift
//  IOS
//
//  Created by Tirth Purohit on 16/06/23.
//

import UIKit

class UIActivityIndicatorVC: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var stackView: UIStackView!

    // MARK: - Variables
    private var no  = 0
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.hidesWhenStopped = true
    }
    
    // MARK: - IB Action
    @IBAction private func btnAddItemToStack(_ sender: UIButton) {
        activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            guard let self else {
                return
            }
            self.addItemToStack()
            self.activityIndicator.stopAnimating()
        }
    }
}

// MARK: - Functions
extension UIActivityIndicatorVC {
    func addItemToStack() {
        let itemView = UILabel()
        itemView.text = String(no)
        itemView.textAlignment = .center
        itemView.backgroundColor = .orange
        stackView.addArrangedSubview(itemView)
        no += 1
    }
}
