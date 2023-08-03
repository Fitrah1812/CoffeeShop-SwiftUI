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
//                .lineLimit(2)
                .lineSpacing(1.5)
                //dapat memotong text

            
            Spacer()
        }
    }
}

struct CoffeeShopDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeShopDetailsView(coffeeShopDetails: Coffeeshop(image: "brewery", name: "John", location: "Bengkulu", review: "Mantap"))
    }
}

//struct EmojiDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        EmojiDetailsView(emojiDetails: EmojiModel(emoji: "🥹", name: "Taurus", description: "The Handphone has been correct"))
//    }
//}


//let emojiDetails: EmojiModel
//
//var body: some View {
//    VStack {
//        Text(emojiDetails.emoji)
//            .font(.system(size: 120))
//            .padding(.bottom)
//
//        Text(emojiDetails.name)
//            .font(.system(.title, design: .rounded))
//            .fontWeight(.black)
//            .padding(.bottom)
//
//        Text(emojiDetails.description)
//            .font(.system(size: 18, design: .rounded))
//            .lineLimit(4)
//            .multilineTextAlignment(.center)
//
//        Spacer()
//
//
//    }
//}
