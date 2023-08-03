//
//  ContentView.swift
//  CoffeeShop
//
//  Created by Laptop MCO on 03/08/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText: String = ""
    
    private var coffeeShopResults: [Coffeeshop]{
        let result = CoffeeshopProvider.all()
        if searchText.isEmpty{
            return result
        }else{
            return result.filter { index in
                index.name.lowercased().contains(searchText.lowercased())
            }
        }
    }
    var body: some View {
        NavigationStack {
            List(coffeeShopResults) { result in
                NavigationLink {
                    CoffeeShopDetailsView(coffeeShopDetails: result)
                } label: {
                    Image(result.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80.0, height: 80)
                        .clipShape(Circle())
                    
                    Text("\(result.name)" )
                        .font(.title2)
                        .padding(6)
                    
                
                }
            }
            .searchable(text: $searchText)
            .listStyle(.plain)
            .navigationTitle("Coffee Shop Finder")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

