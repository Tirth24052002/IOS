//
//  ImagePickerVC.swift
//  IOS
//
//  Created by Tirth Purohit on 16/06/23.
//

import UIKit

class ImagePickerVC: UIViewController {

    // MARK: - Ib Outlets
    @IBOutlet weak var lblPersonImage: UIImageView!
    
    // MARK: - View  Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        Implementation()
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    @IBAction func btnPickImage(_ sender: UIButton) {
       let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true)
    }
    
}
extension ImagePickerVC {
    func Implementation() {
        lblPersonImage.layer.cornerRadius = lblPersonImage.frame.size.height/2
    }
}

// MARK: - Extension
extension ImagePickerVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker:
                               UIImagePickerController,
                               didFinishPickingMediaWithInfo info:
    [UIImagePickerController.InfoKey : Any]) {
        guard let setImage = info[.editedImage] else {
            return
        }
        self.lblPersonImage.image = setImage as? UIImage
        dismiss(animated: true)
    }
    
}
