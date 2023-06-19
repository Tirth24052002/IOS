//
//  WebViewVC.swift
//  IOS
//
//  Created by Tirth Purohit on 16/06/23.
//

import UIKit
import WebKit

class WebViewVC: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var webView: WKWebView!
    
    // MARK: - View Life Cycle  
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func btnBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}

// MARK: - Extension
extension WebViewVC: WKUIDelegate {
    func setup() {
        let myURL = URL(string:"https://www.google.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
}
