//
//  ThirdVc.swift
//  IOS
//
//  Created by Tirth Purohit on 21/06/23.
//

import UIKit

class ThirdVc: UIViewController {

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.toolbar.backgroundColor = .brown
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    // MARK: - IB Action    
    @IBAction func goback(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popTofirst(_ segue: UIStoryboardSegue) {
        navigationController?.popViewController(animated: true)
    }
}
