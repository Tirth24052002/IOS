//
//  TabelDataModel.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import Foundation

struct TabelDataModel {
// MARK: - Variables
var fieldName: String?
var pertime: String?
var isSelected: Bool = false

// MARK: - Initializer
init(_ field: String, _ time: String) {
    fieldName = field
    pertime = time
}
}

// MARK: - Extension
extension TabelDataModel {
static func getTableData() -> [TabelDataModel] {
    return [TabelDataModel("Document Verification", "3 min ago"),
            TabelDataModel("Newbie Onboarding", "5 days ago"),
            TabelDataModel("Designer Opening", "1 week ago "),
            TabelDataModel("Web  Opening", "10 days ago"),
            TabelDataModel("Mobile App Opening", "2 weeks ago"),
            TabelDataModel("ReackJS Opening", "4 days ago"),
            TabelDataModel("Manager Opening", "1 month ago"),
            TabelDataModel("Salary Raise ", "6 days ago"),
            TabelDataModel("Promated Employee", "3 days ago"),
           ]
}
}
