//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Mine Rala on 7.02.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // Get context reference
    @Environment(\.modelContext) private var context
    @Query private var items: [DataItem]
    var body: some View {
        VStack {
            Text("Tap on this button to add data")
                .padding()
            Button("Add an item") {
                addItem()
            }
            List {
                ForEach(items) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Button {
                            updateItem(item)
                        } label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        }
                    }
                }.onDelete { indexes in
                    for index in indexes {
                        deleteItem(items[index])
                    }
                }
            }
        }.padding()
    }
    
    private func addItem() {
        // Create the item
        let item = DataItem(name: "Text")
        // Add the item to the data context
        context.insert(item)
        print("ItemID: \(item.id), ItemName: \(item.name)")
    }
    
    private func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    private func updateItem(_ item: DataItem) {
        // Edit the item data
        item.name = "Updated text item"
        // Save the context
        try? context.save()
    }
}

#Preview {
    ContentView()
}
