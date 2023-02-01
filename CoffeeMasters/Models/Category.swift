//
//  Category.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import Foundation

struct Category: Decodable, Identifiable {
    var id: String {
        return self.name
    }
    
    var name: String
    var products: [Product] = []
}
