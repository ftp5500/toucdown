//
//  FeauturedItemComponent.swift
//  Touchdown
//
//  Created by Ali on 27/09/2022.
//

import SwiftUI

struct FeauturedItemComponent: View {
    //MARK: - PROPERTIES
    var player:Player
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
   
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}
//MARK: - PREVIEW
struct FeauturedItemComponent_Previews: PreviewProvider {
    static let players:[Player] = Bundle.main.decode("player.json")
    static var previews: some View {
        FeauturedItemComponent(player: players[0])
            .previewLayout(.sizeThatFits)
            .previewDevice("iPhone 12")
            .background(colorBackground)
            .padding()
    }
}
