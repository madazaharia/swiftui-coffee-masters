//
//  OfferCardView.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import SwiftUI

struct OfferCardView: View {
    var title: String
    var description: String
    
    var body: some View {
        ZStack {
            Image("BackgroundImage")
                .frame(maxWidth: .infinity, maxHeight: 200)
                .clipped()
            
            VStack {
                Text(title)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
                
                Text(description)
                    .padding()
                    .font(.title)
                    .background(Color("CardBackground"))
            }
        }
    }
}

struct OfferCardView_Previews: PreviewProvider {
    static var previews: some View {
        OfferCardView(title: "Preview Offer", description: "Preview Description")
    }
}
