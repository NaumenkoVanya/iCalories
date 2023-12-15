//
//  ContentView.swift
//  iCalories
//
//  Created by Ваня Науменко on 15.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                Section {
                    Text("Ivan")
                    Text("Igorevich")
                    Text("Naumenko")
                } header: {
                    Text("Movies")
                } footer: {
                    Text("Some cool movies")
                }

            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
