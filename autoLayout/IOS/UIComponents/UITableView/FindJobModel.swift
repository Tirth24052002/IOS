//
//  FindJobModel.swift
//  IOS
//
//  Created by Tirth Purohit on 08/06/23.
//

import UIKit

class FindJobModel: NSObject {
    
    // MARK: - Variables
    var imageName: String?
    var companyName: String?
    var currentOpening: String?
    var isSelected: Bool = false
    
    // MARK: - Initializer
    override init() {
        super.init()
    }
    
    init(_ img: String, _ company: String, _ opening: String?) {
        imageName = img
        companyName = company
        currentOpening = opening
    }
}

// MARK: - Extension
extension FindJobModel {
    static func getCurrentOpening() -> [FindJobModel] {
        return[FindJobModel("microsoft", "Microsoft", "Full Stack developer"),
               FindJobModel("google", "Google LLC", "Seniorr UI/UX Designer"),
               FindJobModel("dribble", "Dribble", "Interaction Designer"),
               FindJobModel("dropbox", "Dropbox Inc.", "Mobile App Developer"),
               FindJobModel("behance", "Behance", "illustration Artist"),
               ]
    }
}
