//
//  MapVC.swift
//  IOS
//
//  Created by Tirth Purohit on 19/06/23.
//

import UIKit

class MapVC: UIViewController {

    // MARK: - Variables
    private var location = ["Ahmedabad", "Mumbai", "Delhi", "Kolkata", "Chennai"]
    
    // MARK: - Ib Outlets
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var datePickerView: UIDatePicker!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        let time = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            print(self.datePickerView.date)
            print(self.datePickerView.countDownDuration)
        }
    }
}

// MARK: - Picker View Delegate
extension MapVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return location[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
//        view.backgroundColor = .green
//    return view
//
//    }
}

// MARK: - Picker View Data Source
extension MapVC: UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return location.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
         return 1
    }
}
