//
//  ArchivingView.swift
//  iexpense
//
//  Created by Natalie Ammerman on 10/14/24.
//

import SwiftUI

struct NewUser: Codable {
    let firstName: String
    let lastName: String
}

struct ArchivingView: View {
    @State private var user = NewUser(firstName: "Taylor", lastName: "Swift")
    
    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

#Preview {
    ArchivingView()
}
