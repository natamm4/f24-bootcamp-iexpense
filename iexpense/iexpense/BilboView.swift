//
//  BilboView.swift
//  iexpense
//
//  Created by Natalie Ammerman on 10/14/24.
//

import Observation
import SwiftUI

@Observable
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

struct BilboView: View {
    @State private var user = User()
    
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.lastName)")
            
            TextField("First name", text: $user.firstName)
            TextField("Last name", text: $user.lastName)
        }
        .padding()
    }
}

#Preview {
    BilboView()
}
