//
//  UserDefaultsView.swift
//  iexpense
//
//  Created by Natalie Ammerman on 10/14/24.
//

import SwiftUI

struct UserDefaultsView: View {
    @AppStorage("tapCount") private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
            //UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
    }
}

#Preview {
    UserDefaultsView()
}
