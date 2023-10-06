//
//  SectionView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    
    @State var rotateClockwise : Bool
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ?  90 : -90))
            
            Spacer()
        }//: Vstack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - Preview
#Preview {
    SectionView(rotateClockwise: false)
}
