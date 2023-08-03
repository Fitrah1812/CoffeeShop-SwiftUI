//
//  CoffeeShopDetailsView.swift
//  CoffeeShop
//
//  Created by Laptop MCO on 03/08/23.
//

import SwiftUI

struct CoffeeShopDetailsView: View {
    let coffeeShopDetails: Coffeeshop
    
    var body: some View {
        VStack {
            
            Image(coffeeShopDetails.image)
                .resizable()
                .scaledToFit()
                .frame(width: 320, height: 320)
                .clipShape(Circle())
            
            Text(coffeeShopDetails.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .padding(.bottom)
            
            Text(coffeeShopDetails.location)
                .font(.system(.caption, design: .rounded))
                .padding(.bottom)
            
            Text("⭐️⭐️⭐️⭐️⭐️")
            Text("\(coffeeShopDetails.review)")
                .multilineTextAlignment(.center)
                .padding([.bottom, .top], 24)
                .lineSpacing(1.5)

            Spacer()
        }
    }
}

struct CoffeeShopDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopDetailsView(coffeeShopDetails: Coffeeshop(image: "brewery", name: "John", location: "Bengkulu", review: "Mantap"))
    }
}
