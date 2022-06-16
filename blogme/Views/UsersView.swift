//
//  UsersView.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import SwiftUI

struct UsersView: View {
    
    @ObservedObject var usersViewModel = UsersViewModel(apiClient: Resolver.shared.resolve(APIClientProtocol.self))
    
    var body: some View {
        NavigationView {
            List {
                ForEach (usersViewModel.users) { user in
                    USerCell(user: user)
                }
            }
            .navigationBarTitle("Users")
        }
        .onAppear {
            self.usersViewModel.getUsers()
        }
    }
}

struct USerCell: View {
    var user: UserAPI
    var body: some View {
        NavigationLink(destination: UserDetailView(selectedUser: user)) {
            HStack {
            Image(systemName: "person.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 60)
                Text(user.name)
            }
        }
    }
}

