//
//  CarouselTabView.swift
//  ChefDelivery
//
//  Created by Leandro Rodrigues on 19.08.23.
//

import SwiftUI

struct CarouselTabView: View {
    
    var ordersMock: [OrderType] = [
        OrderType(id: 1, name: "barbecue-banner", image: "barbecue-banner"),
        OrderType(id: 2, name: "brazilian-meal-banner", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "pokes-banner", image: "pokes-banner"),
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { mock in CarouselItemView(order: mock) }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct CarouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselTabView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
