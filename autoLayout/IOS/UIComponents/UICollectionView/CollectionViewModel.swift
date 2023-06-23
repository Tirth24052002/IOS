//
//  CollectionViewModel.swift
//  IOS
//
//  Created by Tirth Purohit on 13/06/23.
//

import Foundation

class CollectionViewModel: NSObject {
    
    // MARK: - Variables
    private var stringName: String?
    private var imgName: String?
    
    // MARK: - Intializer
    override init() {
        super.init()
    }
    
    init(_ name: String, _ image: String) {
        stringName = name
        imgName = image
    }
}

// MARK: - Extension
extension CollectionViewModel {
    static func getCollectionData() -> [CollectionViewModel] {
        return [ CollectionViewModel("lion", "Lion"),
                 CollectionViewModel("fox", "Fox"),
                 CollectionViewModel("elephant", "Elephant")
                ]
    }
}
