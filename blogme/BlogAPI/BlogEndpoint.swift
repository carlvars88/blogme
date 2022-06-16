//
//  UsersEndpoint.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import Foundation

enum BlogEndpoint {
    static let apiBaseURL = URL(string: "https://jsonplaceholder.typicode.com")!
    
    case users
    case todos(Int)
    case posts(Int)
    case albums(Int)
}

extension BlogEndpoint: RequestBuilder {
    
    var urlRequest: URLRequest {
        switch self {
        case .users:
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/users")
            else {preconditionFailure("Invalid URL format")}
            let request = URLRequest(url: url)
            return request
        case .todos(let userId):
            guard let url = URL(string: "\(BlogEndpoint.apiBaseURL)/user/\(userId)/todos")
            else {preconditionFailure("Invalid URL format")}
            let request = URLRequest(url: url)
            return request
        case .posts(let userId):
            guard let url = URL(string: "\(BlogEndpoint.apiBaseURL)/user/\(userId)/posts")
            else {preconditionFailure("Invalid URL format")}
            let request = URLRequest(url: url)
            return request
        case .albums(let userId):
            guard let url = URL(string: "\(BlogEndpoint.apiBaseURL)/user/\(userId)/albums")
            else {preconditionFailure("Invalid URL format")}
            let request = URLRequest(url: url)
            return request
        }
    
    }
}
