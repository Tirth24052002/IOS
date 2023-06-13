//
//  UIComponents.swift
//  IOS
//
//  Created by Tirth Purohit on 06/06/23.
//

import UIKit

class UIComponents: UIViewController {
    
    // MARK: - View Life Cycle   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnTaskAddScreen(_ sender: Any) {
        let taskAddStoryboard = UIStoryboard(name: "TaskAdditionPage", bundle: nil)
        guard let taskAddVC =  taskAddStoryboard.instantiateViewController(withIdentifier:
                                                                        "TaskAdditionPageVC")
                as? TaskAdditionPageVC else {
            return
        }
        navigationController?.pushViewController(taskAddVC , animated: true)
    }
    
}

// MARK: - Extension
extension UIComponents {
    
    // MARK: - IB Action Label
    @IBAction func btnlabel(_ sender: Any) {
        let labelStoryboard = UIStoryboard(name: "UILabel", bundle: nil)
        guard let labelVC =  labelStoryboard.instantiateViewController(withIdentifier:
                                                                        "UILabelVC")
                as? UILabelVC else {
            return
        }
        navigationController?.pushViewController(labelVC , animated: true)
    }
    
    // MARK: - IB Action Button
    @IBAction func btnButton(_ sender: UIButton) {
        let buttonStoryBoard = UIStoryboard(name: "UIButton", bundle: nil)
        guard let btnVc = buttonStoryBoard.instantiateViewController(withIdentifier: "UIButtonVC")
                as? UIButtonVC else {
            return
        }
        navigationController?.pushViewController(btnVc, animated: true)
    }
    
    // MARK: - IB Action Text Field
    @IBAction func btnTextfield(_ sender: UIButton) {
        let textFieldStoryboard = UIStoryboard(name: "UITextField",
                                               bundle: nil)
        guard let textFieldVC =  textFieldStoryboard.instantiateViewController(withIdentifier:
                                                                                "UITextFieldVC")
                as? UITextFieldVC else {
            return
        }
        navigationController?.pushViewController(textFieldVC ,
                                                 animated: true)
    }
    
    // MARK: - IB Action Text View
    @IBAction func btnTextView(_ sender: UIButton) {
        let textViewStoryboard = UIStoryboard(name: "UITextView",
                                              bundle: nil)
        guard let textViewVC =  textViewStoryboard.instantiateViewController(withIdentifier:
                                                                                "UITextViewVC")
                as? UITextViewVC else {
            return
        }
        navigationController?.pushViewController(textViewVC ,
                                                 animated: true)
    }
    
    // MARK: - IB Action Switch
    @IBAction func btnSwitch(_ sender: Any) {
        let switchStoryboard = UIStoryboard(name: "UISwitch",
                                            bundle: nil)
        guard let switchVC =  switchStoryboard.instantiateViewController(withIdentifier:
                                                                            "UISwitchVC")
                as? UISwitchVC else {
            return
        }
        navigationController?.pushViewController(switchVC ,
                                                 animated: true)
    }
    
    // MARK: - IB Action Slider
    @IBAction func btnSlider(_ sender: Any) {
        let sliderStoryboard = UIStoryboard(name: "UISlider", bundle: nil)
        guard let sliderVC =  sliderStoryboard.instantiateViewController(withIdentifier:
                                                                            "UISliderVC")
                as? UISliderVC else {
            return
        }
        navigationController?.pushViewController(sliderVC , animated: true)
    }
    
    // MARK: - IB Action Progress View
    @IBAction func btnProgressView(_ sender: UIButton) {
        let progressViewStoryboard = UIStoryboard(name: "UIProgressView", bundle: nil)
        guard let progressViewVC =  progressViewStoryboard.instantiateViewController(withIdentifier:
                                                                                        "UIProgressViewVC")
                as? UIProgressViewVC else {
            return
        }
        navigationController?.pushViewController(progressViewVC , animated: true)
    }
    
    // MARK: - IB Action Segmented Control
    @IBAction func btnSegmentedControl(_ sender: UIButton) {
        let segmentedControlStoryboard = UIStoryboard(name: "UISegmentedControl", bundle: nil)
        guard let segmentedControlVC =  segmentedControlStoryboard.instantiateViewController(withIdentifier:
                                                                                                "UISegmentedControlVC")
                as? UISegmentedControlVC else {
            return
        }
        navigationController?.pushViewController(segmentedControlVC , animated: true)
    }
    
    // MARK: - IB Action Page Control
    @IBAction func btnPageControl(_ sender: UIButton) {
        let pageControlStoryboard = UIStoryboard(name: "UIPageControl", bundle: nil)
        guard let pageControlVC =  pageControlStoryboard.instantiateViewController(withIdentifier:
                                                                                    "UIPageControlVC")
                as? UIPageControlVC else {
            return
        }
        navigationController?.pushViewController(pageControlVC , animated: true)
    }
    
    // MARK: - IB Action Scroll View
    @IBAction func btnScrollView(_ sender: UIButton) {
        let scrollViewStoryboard = UIStoryboard(name: "UIScrollView", bundle: nil)
        guard let scrollViewVC =  scrollViewStoryboard.instantiateViewController(withIdentifier:
                                                                                    "UIScrollViewVC")
                as? UIScrollViewVC else {
            return
        }
        navigationController?.pushViewController(scrollViewVC , animated: true)
    }
    
    // MARK: - IB Action Page View Controller
    @IBAction func btnPageViewController(_ sender: UIButton) {
        let pageViewControllerStoryboard = UIStoryboard(name: "MainPageViewController", bundle: nil)
        guard let pageViewControllerVC =  pageViewControllerStoryboard.instantiateViewController(withIdentifier:
                                                                        "MainPageViewController")
                as? MainPageViewController else {
            return
        }
        navigationController?.pushViewController(pageViewControllerVC , animated: true)
    }
    
    // MARK: - Ib Action Stepper
    @IBAction func btnStepper(_ sender: UIButton) {
        let stepperStoryboard = UIStoryboard(name: "UIStepper", bundle: nil)
        guard let stepperVC =  stepperStoryboard.instantiateViewController(withIdentifier:
                                                                        "UIStepperVC")
                as? UIStepperVC else {
            return
        }
        navigationController?.pushViewController(stepperVC , animated: true)
        
    }
    
    // MARK: - IB Action Table View
    @IBAction func btnTableView(_ sender: UIButton) {
        let tableViewStoryboard = UIStoryboard(name: "UITableView", bundle: nil)
        guard let tableViewVC =  tableViewStoryboard.instantiateViewController(withIdentifier:
                                                                        "UITableViewVC")
                as? UITableViewVC else {
            return
        }
        navigationController?.pushViewController(tableViewVC , animated: true)
    }
    
    // MARK: - IB Action Registration Page
    @IBAction func btnRegistrationPage(_ sender: UIButton) {
        let registrationPageStoryboard = UIStoryboard(name: "RegistrationPage", bundle: nil)
        guard let registrationPageVC =  registrationPageStoryboard.instantiateViewController(withIdentifier:
                                                                        "RegistrationPageVC")
                as? RegistrationPageVC else {
            return
        }
        navigationController?.pushViewController(registrationPageVC , animated: true)
    }
    
    // MARK: - IB Action Collection View
    @IBAction func btnOptionTableView(_ sender: Any) {
        let optionTableViewStoryboard = UIStoryboard(name: "UICollectionView", bundle: nil)
        guard let tableViewVC =  optionTableViewStoryboard.instantiateViewController(withIdentifier:
                                                                        "UICollectionViewVC")
                as? UICollectionViewVC else {
            return
        }
        navigationController?.pushViewController(tableViewVC , animated: true)
    }
}
