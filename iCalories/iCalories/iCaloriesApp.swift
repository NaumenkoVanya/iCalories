//
//  iCaloriesApp.swift
//  iCalories
//
//  Created by Ваня Науменко on 15.12.23.
//

import SwiftUI

@main
struct iCaloriesApp: App {
    @StateObject private var dataController = DataController()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext , dataController.container.viewContext)
        }
    }
}
