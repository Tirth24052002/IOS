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
            TabelDataModel("Positon Opening", "1 week ago "),
            TabelDataModel("Salary Raise ", "2 days ago"),
            TabelDataModel("Promated Employee", "3 days ago"),
           ]
}
}
