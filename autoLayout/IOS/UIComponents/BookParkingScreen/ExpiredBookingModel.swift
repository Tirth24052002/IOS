//
//  ExpiredBookingModel.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import Foundation

struct ExpiredBookingModel {
    
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
extension ExpiredBookingModel {
    static func getUserData() -> [ExpiredBookingModel] {
        return[ExpiredBookingModel("TBGB00114A",
                                 "09:00 AM",
                                 "VD-5-S-444"),
               ExpiredBookingModel("AAGB00134B",
                                 "11:00 AM",
                                 "VC-5-S-854"),
               ExpiredBookingModel("PAGB00134C",
                                 "11:30 AM",
                                 "VX-5–P-458"),
               ExpiredBookingModel("IAGB00134D",
                                 "08:20 AM",
                                 "LM-5-O-965"),
               ExpiredBookingModel("CAGB00134Z",
                                    "11:00 AM",
                                    "SM-5-O-945"),
               ]
    }
}
