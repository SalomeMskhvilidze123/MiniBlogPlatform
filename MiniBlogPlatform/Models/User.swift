//
//  User.swift
//  MiniBlogPlatform
//
//  Created by Mcbook Pro on 09.06.25.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
}
