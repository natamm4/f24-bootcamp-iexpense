//
//  SheetView.swift
//  iexpense
//
//  Created by Natalie Ammerman on 10/14/24.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    let name: String
    
    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct SheetView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@natamm")
        }
    }
}

#Preview {
    SheetView()
}
