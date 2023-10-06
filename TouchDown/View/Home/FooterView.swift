//
//  FooterView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
            
            Text("Copyright @ Bartu Kara \nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
                
        }//: Vstack
        .padding()
    }
}

#Preview {
    FooterView()
        .previewLayout(.sizeThatFits)
        .background(colorBackground)
}
