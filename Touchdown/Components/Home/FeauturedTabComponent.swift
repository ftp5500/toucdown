//
//  PlayerBarComponent.swift
//  Touchdown
//
//  Created by Ali on 28/09/2022.
//

import SwiftUI

struct FeauturedTabComponent: View {
    @State private var players:[Player] = Bundle.main.decode("player.json")
    var body: some View {
        TabView{
            ForEach(players) { player in
                FeauturedItemComponent(player: player)
                    .padding()
            }
        }//: TABVIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct PlayerBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        FeauturedTabComponent()
            .background(.gray)
    }
}
