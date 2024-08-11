//
//  Profile.swift
//  IVOPattern
//
//  Created by Юлия  on 11.08.2024.
//

import SwiftUI

struct Profile: Identifiable {
    var id = UUID().uuidString
    var createdAt: Date
    var name: String
    
    init(createdAt: Date? = nil,
         name: String? = nil) {
        self.createdAt = createdAt ?? Date()
        self.name = name ?? "" 
    }
}
