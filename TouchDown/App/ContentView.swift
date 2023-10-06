//
//  ContentView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .padding(.vertical)
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout,spacing: 15, content: {
                                ForEach(products) {product in
                                        ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//: Loop
                            })//: LazyGrid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            
                            FooterView()
                                .padding(.horizontal)
                        }//: Vstack
                    })//: Scrool
                    
                    
                }//: Vstack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//: Zstack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
        .environmentObject(Shop())
}
