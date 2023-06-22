//
//  AddingScoreModel.swift
//  IOS
//
//  Created by Tirth Purohit on 22/06/23.
//

import Foundation

struct AddingScoreModal {
    
    // MARK: - Vairables
    var textofScore: String?
    var theScoreToAdd: String?
    var isSelected: Bool? = false
    
    init(_ textofScore: String? = nil, _ theScoreToAdd: String? = nil) {
        self.textofScore = textofScore
        self.theScoreToAdd = theScoreToAdd
    }
}

// MARK: - Extension
extension AddingScoreModal {
    static func configScore() -> [AddingScoreModal] {
        return [AddingScoreModal("Player hits six","6"),
                AddingScoreModal("Player hits four","4"),
                AddingScoreModal("Player takes three run","3"),
                AddingScoreModal("Player takes two run","2"),
                AddingScoreModal("Player taker one run","1"),
                AddingScoreModal("The ball was no ball","1"),
                AddingScoreModal("The ball was wide ball","1"),
            ]
    }
}
