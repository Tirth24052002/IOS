//
//  ParkingSpaceModel.swift
//  IOS
//
//  Created by Tirth Purohit on 23/06/23.
//

import Foundation

struct ParkingSpaceModel {
    
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
extension ParkingSpaceModel {
    static func getUserData() -> [ParkingSpaceModel] {
        return[ParkingSpaceModel("TCGB00114A",
                                 "06:00 AM",
                                 "VD-5-S-444"),
               ParkingSpaceModel("AGGB00134B",
                                 "10:00 AM",
                                 "VE-5-S-854"),
               ParkingSpaceModel("PLGB00134C",
                                 "12:30 PM",
                                 "VX-5–P-458"),
               ParkingSpaceModel("IAGB00934D",
                                 "08:20 AM",
                                 "LM-5-O-965"),
               ParkingSpaceModel("MAGB00134Z",
                                    "11:00 AM",
                                    "SM-5-O-945"),
               ]
    }
}
