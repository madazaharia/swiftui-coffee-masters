//
//  Offers.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import SwiftUI

struct Offers: View {
    
    var body: some View {
        NavigationView {
            List {
                OfferCardView(title: "Offer A", description: "Some Offer")
                OfferCardView(title: "Offer B", description: "Some Offer")
            }
            .navigationTitle("All Offers")
        }
    }
}

struct OffersView_Previews: PreviewProvider {
    static var previews: some View {
        Offers()
    }
}
