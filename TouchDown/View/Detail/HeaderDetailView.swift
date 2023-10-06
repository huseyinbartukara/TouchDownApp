//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }) //: Vstack
        .foregroundStyle(.white)
    }
}

// MARK: - Preview
#Preview {
    HeaderDetailView()
        .environmentObject(Shop())
}
