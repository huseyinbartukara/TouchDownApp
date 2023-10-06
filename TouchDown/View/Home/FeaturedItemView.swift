//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by Bartu Kara on 30.09.2023.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Properties
    
    let player : Player
    
    // MARK: - Body
    var body: some View {
        
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}

// MARK: - Preview
#Preview {
    FeaturedItemView(player: players[0])
}
