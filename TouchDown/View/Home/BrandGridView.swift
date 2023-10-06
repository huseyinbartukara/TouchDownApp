//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Property
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content : {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) {brand in
                        BrandItemView(brand: brand)
                }
                
            })//: Grid
            .frame(height: 200)
            .padding(15)
        })//:Scroll
    }
}

// MARK: - Preview
#Preview {
    BrandGridView()
}
