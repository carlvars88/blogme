//
//  BlogAPIProtocol.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import Foundation
import Combine

protocol BlogRepositoryProtocol {
    var apiClient: APIClientProtocol {get}
    
    func getUsers() -> AnyPublisher<[UserAPI], APIError>
}

extension BlogRepositoryProtocol {
    func getUsers() -> AnyPublisher<[UserAPI], APIError> {
        return apiClient.request(with: BlogEndpoint.users)
            .eraseToAnyPublisher()
    }
}
