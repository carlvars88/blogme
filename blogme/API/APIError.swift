//
//  APIError.swift
//  blogme
//
//  Created by Carlos Pujol on 6/15/22.
//

import Foundation

enum APIError: Error {
    case decodingError
    case httpError(Int)
    case unknown
}
