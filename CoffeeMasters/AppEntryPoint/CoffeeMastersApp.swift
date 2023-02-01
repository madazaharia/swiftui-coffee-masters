//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    // MARK: - Properties
    var menuManger = MenuManager()
    var cartManager = CartManager()

    // MARK: - Drawing
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManger)
                .environmentObject(cartManager)
        }
    }
}
