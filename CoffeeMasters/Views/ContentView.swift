//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        TabView {
            ProductList()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            
            Cart()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                .badge(cartManager.cart.count)
            
            Offers()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            
            Info()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(MenuManager())
            .environmentObject(CartManager())
    }
}
