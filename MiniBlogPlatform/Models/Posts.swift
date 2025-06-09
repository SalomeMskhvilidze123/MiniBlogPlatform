//
//  Posts.swift
//  MiniBlogPlatform
//
//  Created by Mcbook Pro on 09.06.25.
//

import Foundation

struct Post: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
    
    var ratings: [Int] = []
    
    var averageRating: Double {
        if ratings.isEmpty {
            return 0.0
        } else {
            let total = ratings.reduce(0, +)
            return Double(total) / Double(ratings.count)
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case userId, id, title, body
    }
}
