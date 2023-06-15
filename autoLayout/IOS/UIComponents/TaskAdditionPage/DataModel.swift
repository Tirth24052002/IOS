//
//  DataModel.swift
//  IOS
//
//  Created by Tirth Purohit on 15/06/23.
//

import Foundation
class DataModel {
    var fieldName: String?
    var pertime: String?
    public var isSelected: Bool = false
    
    // MARK: - Initializer
    init(_ field: String, _ time: String) {
        fieldName = field
        pertime = time
    }
}

// MARK: - Extension
extension DataModel {
    static func getTableData() -> [DataModel] {
        return [DataModel("Document Verification", "3 min ago"),
                DataModel("Newbie Onboarding", "5 days ago"),
                DataModel("Designer Opening", "1 week ago "),
                DataModel("Web  Opening", "10 days ago"),
                DataModel("Mobile App Opening", "2 weeks ago"),
                DataModel("ReackJS Opening", "4 days ago"),
                DataModel("Manager Opening", "1 month ago"),
                DataModel("Salary Raise ", "6 days ago"),
                DataModel("Promated Employee", "3 days ago"),
        ]
    }
}
extension DataModel {
    static func collectionData() -> [DataModel] {
        return [ DataModel("Verification Process with the Team" ,""),
                 DataModel("Onboarding Process is Completed", ""),
                 DataModel("Leave Request Approved", ""),
                 DataModel("Event Bid Approved", ""),
                 DataModel("Recriment Completed", ""),
                 DataModel("Openings filled", "")
        ]
    }
}
