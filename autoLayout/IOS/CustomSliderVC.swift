//
//  CustomSliderVC.swift
//  IOS
//
//  Created by Tirth Purohit on 17/07/23.
//

import UIKit

class CustomSliderVC: UIViewController {
    
    let rangeSlider = RangeSlider(frame: .zero)
    
    override func viewDidLoad() {
      super.viewDidLoad()
      view.addSubview(rangeSlider)
        rangeSlider.addTarget(self, action: #selector(rangeSliderValueChanged(_:)),
                              for: .valueChanged)
        let time = DispatchTime.now()
        DispatchQueue.main.asyncAfter(deadline: time) {
            self.rangeSlider.trackHighlightTintColor = .blue
            self.rangeSlider.thumbImage = UIImage(imageLiteralResourceName: "sliderIcon")
            self.rangeSlider.highlightedThumbImage = UIImage(imageLiteralResourceName: "redCircle")
        }
    }
    
    override func viewDidLayoutSubviews() {
      let margin: CGFloat = 20
      let width = view.bounds.width - 2 * margin
      let height: CGFloat = 30
      
      rangeSlider.frame = CGRect(x: 0, y: 0,
                                 width: width, height: height)
      rangeSlider.center = view.center
    }
      
      @objc func rangeSliderValueChanged(_ rangeSlider: RangeSlider) {
        let values = "(\(rangeSlider.lowerValue) \(rangeSlider.upperValue))"
        print("Range slider value changed: \(values)")
      }
}
