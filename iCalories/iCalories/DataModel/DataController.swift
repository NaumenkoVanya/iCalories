//
//  DataController.swift
//  iCalories
//
//  Created by Ваня Науменко on 15.12.23.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "FoodMadel")
    
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failad to load the data \(error.localizedDescription)")
            }
        }
    }
    
    
    func save(context: NSManagedObjectContext) {
        do {
            try context.save()
            print("Data saved!!! WUHU")
        } catch {
            print("We could not save data...")
        }
    }
    
    func addFood(name: String, colories: Double, context: NSManagedObjectContext) {
        let food = Food(context: context)
        food.id = UUID()
        food.date = Date()
        food.calories = colories
        food.name = name
        
        save(context: context)
        
    }
    
    func editFood(food: Food, name: String, calories: Double, context: NSManagedObjectContext) {
        food.date = Date()
        food.calories = calories
        food.name = name
        
        save(context: context)
    }
    
}
