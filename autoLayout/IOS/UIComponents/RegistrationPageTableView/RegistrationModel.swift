//
//  RegistraionModel.swift
//  IOS
//
//  Created by Tirth Purohit on 09/06/23.
//

import Foundation

class RegistrationModel: NSObject {
    
    // MARK: - Variables
    var personField: String?
    var personName: String?
    var credits: String?
    var timePeriod: String?
    var personAddress: String?
    var isSelected: Bool = false
    
    // MARK: - Initializer
    override init() {
        super.init()
    }
    
    init(_ field: String, _ name: String, _ credit: String?, _ time: String, _ address: String) {
        personField = field
        personName = name
        credits = credit
        timePeriod = time
        personAddress = address
    }
}

// MARK: - Extension
extension RegistrationModel {
    static func getUserData() -> [RegistrationModel] {
        return[RegistrationModel("Media and Gender",
                                 "Novak, T",
                                 "3 Credits",
                                 "12:15pm - 01:30pm",
                                 "104 BLH"),
               RegistrationModel("Environmental Geology",
                                 "Kilgore. S",
                                 "3 Credits",
                                 "08:35am - 09:50am",
                                 "023 SCB"),
               RegistrationModel("World Civilizations",
                                 "Chande, A",
                                 "3 Credits",
                                 "10:00am - 10:50am",
                                 "155 NEX"),
               RegistrationModel("Introduction to Cybersecurity",
                                 "Leune, C",
                                 "3 Credits",
                                 "09:25am - 10:40 am",
                                 "205 Swirbul Library"),
               RegistrationModel("Statistics and Data Analytics",
                                 "Morales",
                                 "3 Credits",
                                 "02:25pm - 03:40pm",
                                 "100 SWL"),
               ]
    }
}
