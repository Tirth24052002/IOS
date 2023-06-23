//
//  CustomScreen.swift
//  IOS
//
//  Created by Tirth Purohit on 19/06/23.
//

import UIKit
import WebKit

class CustomScreen: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var webView: WKWebView!

    
    // MARK: -  View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://www.apple.com") else {
            return
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    // MARK: - IB Action
    @IBAction func doneButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

