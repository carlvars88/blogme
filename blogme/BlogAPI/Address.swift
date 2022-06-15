//
//  Address.swift
//  blogme
//
//  Created by Carlos Pujol on 6/15/22.
//

import Foundation

struct Address: Codable {
    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo
}
