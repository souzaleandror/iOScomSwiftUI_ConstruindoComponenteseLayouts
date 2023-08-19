//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Leandro Rodrigues on 14.08.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar().padding(.horizontal, 15)
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    OrderTypeGridView()
                    CarouselTabView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.sizeThatFits)
    }
}
