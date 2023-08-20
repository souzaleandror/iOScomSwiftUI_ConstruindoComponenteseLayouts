//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Leandro Rodrigues on 20.08.23.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50)
            VStack{
                Text(order.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }.onTapGesture {
            print("Clicou em em \(order.name)")
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(order: OrderType(id: 1, name: "Monstro Burger", image: "monstro-burger-logo")).previewLayout(.sizeThatFits).padding()
    }
}
