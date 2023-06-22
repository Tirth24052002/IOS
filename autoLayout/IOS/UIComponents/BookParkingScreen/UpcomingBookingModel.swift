//
//  UpcomingBookingModel.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import Foundation

struct UpcomingBookingModel {
    
    // MARK: - Variables
    var rentalID: String?
    var startTime: String?
    var licencePlate: String?
    var isSelected: Bool = false

    // MARK: - Initializer
    init(_ rentalID: String? = nil,_ startTime: String? = nil, _ licencePlate: String? = nil) {
        self.rentalID = rentalID
        self.startTime = startTime
        self.licencePlate = licencePlate
    }
}

// MARK: - Extension
extension UpcomingBookingModel {
    static func getUserData() -> [UpcomingBookingModel] {
        return[UpcomingBookingModel("TAGB00134A",
                                 "09:00 AM",
                                 "VM-5-S-444"),
               UpcomingBookingModel("TAGB00134B",
                                 "10:00 AM",
                                 "VM-5-S-854"),
               UpcomingBookingModel("TAGB00134C",
                                 "09:30 AM",
                                 "VM-5–P-458"),
               UpcomingBookingModel("TAGB00134D",
                                 "10:20 AM",
                                 "VM-5-O-965"),
               UpcomingBookingModel("TAGB00134Z",
                                    "11:00 AM",
                                    "AM-5-O-945"),
               ]
    }
}
