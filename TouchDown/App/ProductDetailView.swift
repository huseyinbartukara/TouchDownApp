//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            // navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // header
            HeaderDetailView()
                .padding(.horizontal)
            // detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            // detail bottom part
            VStack(alignment: .center,spacing: 0, content: {
                // ratings + sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                // description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                })//: Scroll
                
                // Quantity + favorite
                QunatitiyFavouriteDetailView()
                    .padding(.vertical, 10)
                // add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                Spacer()
            })//Vstack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
        })//: Vstack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - Preview
#Preview {
    ProductDetailView()
        .previewLayout(.fixed(width: 375, height: 812))
        .environmentObject(Shop())
}
