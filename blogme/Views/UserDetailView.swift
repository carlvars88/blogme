//
//  UserDetailView.swift
//  blogme
//
//  Created by Carlos Pujol on 6/16/22.
//

import Foundation
import SwiftUI

struct UserDetailView: View {
     
    let selectedUser: UserAPI
    
    var body: some View {
        Form {
            Section(header: Text("User Details")) {
                Image(systemName: "person.fill")
                    .resizable()
                    .cornerRadius(12.0)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                HStack {
                    Label("", systemImage: "person.circle")
                    Text(selectedUser.name) .font(.headline)
                }
                HStack {
                    Label("", systemImage: "mail.stack")
                    Text(selectedUser.email) .font(.body)
                }
                
                HStack {
                    Label("", systemImage: "phone")
                    Text(selectedUser.phone) .font(.body)
                }
                               
            }
        }
    }
      
}
