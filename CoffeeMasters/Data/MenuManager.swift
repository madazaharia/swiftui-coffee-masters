//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Madalin Zaharia on 01.02.2023.
//

import Alamofire
import Foundation

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    let url: URL = URL(string: "https://raw.githubusercontent.com/bnbaliga/swiftUI-coffee-masters-app/master/CoffeeMasters/CoffeeMasters/DummyData/Menu.json")!
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork()  {
        AF
            .request(url)
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    self.menu = menuFromNetwork
                }
            }
    }
}
