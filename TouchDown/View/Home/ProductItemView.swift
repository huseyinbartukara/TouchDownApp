//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    
    let product : Product
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //Photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: Zstack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //Price
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
            
        })//: Vstack
    }
}


// MARK: - Preview
#Preview {
    ProductItemView(product: products[0])
        .previewLayout(.fixed(width: 200, height: 300))
        .padding()
        .background(colorBackground)
}
