//
//  CollectionDataModel.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import Foundation

struct CollectionDataModel {
    
    // MARK: - Variables
    var data: String?
    var isSlected: Bool = false
    
    // MARK: - Intializer
    init(data: String? = nil) {
        self.data = data
    }
}

// MARK: - Extension
extension CollectionDataModel {
    static func collectionData() -> [CollectionDataModel] {
        return [ CollectionDataModel(data: "Verification Process with the Team"),
                 CollectionDataModel(data: "Verification Process is pending"),
                 CollectionDataModel(data: "Verification Process is completed"),
                 CollectionDataModel(data: "Verification is denied"),
        ]
    }
}

