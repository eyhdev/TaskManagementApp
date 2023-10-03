//
//  ContentView.swift
//  TaskManagementApp
//
//  Created by eyh.mac on 3.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
             .frame(maxWidth: .infinity, maxHeight: .infinity)
             .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
