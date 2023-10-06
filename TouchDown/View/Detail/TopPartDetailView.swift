//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - Property
    
    @State private var isAnimating : Bool = false
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            //Price
            VStack(alignment: .leading,spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formatedPrice ?? sampleProduct.formatedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            //Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
            
        })//: Hstack
        .onAppear(perform : {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

// MARK: - Preview
#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
