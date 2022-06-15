//
//  APIService.swift
//  blogme
//
//  Created by Carlos Pujol on 6/15/22.
//

import Foundation
import Combine

protocol APIClientProtocol {
    func request<T: Decodable>(with builder: RequestBuilder) -> AnyPublisher<T, APIError>
    
}
