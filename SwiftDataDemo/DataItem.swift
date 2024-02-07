//
//  DataItem.swift
//  SwiftDataDemo
//
//  Created by Mine Rala on 7.02.2024.
//

import Foundation
import SwiftData

@Model
final class DataItem: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
