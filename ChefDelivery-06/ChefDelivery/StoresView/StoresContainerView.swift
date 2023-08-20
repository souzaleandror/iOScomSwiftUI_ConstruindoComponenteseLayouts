//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Leandro Rodrigues on 20.08.23.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas";
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { storeMock in
                    StoreItemView(order: storeMock)
                }
            }
        }.padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
