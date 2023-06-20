//
//  HomeVC.swift
//  IOS
//
//  Created by Tirth Purohit on 19/06/23.
//

import UIKit
import WebKit

class HomeVC: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var btnReload: UIBarButtonItem!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        guard let url = URL(string: "https://www.google.com") else {
            return
        }
        let timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(0.1), repeats: true) {
            (timer) in
            //print(self.webView.estimatedProgress)
        }
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
        //self.activityIndicator.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
         //   self.activityIndicator.stopAnimating()
        }
//        let  view = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
//        view.backgroundColor = .green
//        let customView = UIBarButtonItem(customView: view)
//        toolBar.setItems([customView], animated: true)
    }
    
    // MARK: - IB Action
    @IBAction func btnReload(_ sender: UIBarButtonItem) {
        self.webView.reload()
    }
    
}

// MARK: - Web View Delegate
extension HomeVC: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        if let host =  navigationAction.request.url?.host {
            if host == "www.google.com" {
                decisionHandler(.allow)
                return
            }
        }
        decisionHandler(.allow)
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.activityIndicator.stopAnimating()
    }
}
