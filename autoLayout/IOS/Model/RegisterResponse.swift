//
//  RegisterResponse.swift
//  IOS
//
//  Created by Tirth Purohit on 17/07/23.
//

import Foundation

struct RegisterResponse: Codable {
    let id: Int?
    let token: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case token = "token"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        token = try values.decodeIfPresent(String.self, forKey: .token)
    }
}
