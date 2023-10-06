//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ){
                    ForEach(categories) {category in
                            CategoryItemView(category: category)
                    }
                }
            })//: Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })//: Scroll
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
