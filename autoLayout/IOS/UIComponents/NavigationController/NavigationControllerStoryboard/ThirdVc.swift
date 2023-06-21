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
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    @IBAction func goback(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popTofirst(_ segue: UIStoryboardSegue) {
        navigationController?.popViewController(animated: true)
    }
}
