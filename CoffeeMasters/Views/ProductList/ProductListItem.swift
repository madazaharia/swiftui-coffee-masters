//
//  ProductListItem.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import SwiftUI

struct ProductListItem: View {
    var product: Product
    
    var body: some View {
        VStack {
            AsyncImage(url: product.imageURL)
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                        .bold()
                    
                    Text("$ \(product.price, specifier: "%.2f")")
                        .font(.caption)
                }
                .padding(8)
                
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

struct Product_Previews: PreviewProvider {
    static var previews: some View {
        ProductListItem(product: Product(id: 1, name: "Product A", description: "Dummy Descroption", price: 4.25, image: "DummyProduct"))
    }
}
