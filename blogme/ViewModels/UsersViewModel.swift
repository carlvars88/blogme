//
//  UsersViewModel.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import Foundation
import Combine
import SwiftUI

class UsersViewModel: ObservableObject, BlogRepositoryProtocol {
    
    var apiClient: APIClientProtocol
    @Published var users = [UserAPI]()
    
    var cancellables = Set<AnyCancellable>()
    
    init(apiClient: APIClientProtocol) {
        self.apiClient = apiClient
    }
    
    func getUsers() {
        let cancellable = self.getUsers()
            .sink(receiveCompletion: { result in
                switch result {
                case .failure(let error):
                    print("Handle error: \(error)")
                case .finished:
                    break
                }
                
            }) { (userList) in
                self.users = userList
                
            }
        cancellables.insert(cancellable)
    }
}


