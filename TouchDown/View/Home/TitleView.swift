//
//  TitleView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct TitleView: View {
    // MARK: - Properties
    
    var title : String
    
    // MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Spacer()
        }//: Hstack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

// MARK: - Preview
#Preview {
    TitleView(title: "Helmet")
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
