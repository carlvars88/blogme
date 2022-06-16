//
//  User.swift
//  blogme
//
//  Created by Carlos Pujol on 6/15/22.
//

import Foundation

struct UserAPI: Codable, Identifiable {
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: AddressAPI
    let phone: String
    let website: String
    let company: CompanyAPI
    
}
