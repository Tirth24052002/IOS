//
//  CustomSegue.swift
//  IOS
//
//  Created by Tirth Purohit on 21/06/23.
//

import UIKit

class MySegue: UIStoryboardSegue {
    
    override init(identifier: String?, source: UIViewController, destination: UIViewController) {
        super.init(identifier: identifier, source: source, destination: destination)
    }
    
    override func perform() {
        if  let firstVCview = self.source.view, let secondVCview = self.destination.view {
            let screenWidth = UIScreen.main.bounds.width
            let screenHeight = UIScreen.main.bounds.height
            secondVCview.frame = CGRect(x: 0, y: screenHeight, width: screenWidth, height: screenHeight)
            let window = UIApplication.shared.keyWindow
            window?.insertSubview(secondVCview, aboveSubview: firstVCview)
            UIView.animate(withDuration: 0.4) {
                firstVCview.frame = firstVCview.frame.offsetBy(dx: 0, dy: -screenHeight)
                secondVCview.frame = secondVCview.frame.offsetBy(dx: 0, dy: -screenHeight)
            } completion: { (finish) in
                self.source.present(self.destination, animated: false, completion:  nil)
            }
        }
    }
}
