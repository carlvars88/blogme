//
//  UsersView.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import SwiftUI

struct UsersView: View {
    
    @ObservedObject var usersViewModel = UsersViewModel()
    
    var body: some View {
        NavigationView {
            List(self.usersViewModel.users) { user in
                Text(user.name)
            }
            .navigationBarTitle("Users")
        }
        .onAppear {
            self.usersViewModel.getUsers()
        }
    }
}
