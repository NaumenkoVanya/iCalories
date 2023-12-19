//
//  AddFoodView.swift
//  iCalories
//
//  Created by Ваня Науменко on 19.12.23.
//

import SwiftUI

struct AddFoodView: View {
    @Environment (\.managedObjectContext) var managedObjContext
    @Environment (\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories: Double = 0
    
    var body: some View {
        Form {
            Section {
                TextField("Food name", text: $name)
                
                VStack {
                    Text("Calories: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 10)
                }
                .padding()
                
                HStack {
                    Spacer()
                    Button("Submit") {
                        DataController().addFood(name: name, colories: calories, context: managedObjContext)
                        dismiss()
                    }
                    Spacer()
                }
                
            }
        }
       
        
    }
}

#Preview {
    AddFoodView()
}
