//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    // MARK: - Properties
    
    @EnvironmentObject var shop : Shop
    
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            })//: Button
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            })//: Button
        }//: Hstack
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
}
