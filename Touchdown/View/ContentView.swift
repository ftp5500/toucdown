//
//  ContentView.swift
//  Touchdown
//
//  Created by Ali on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
   
    var body: some View {
        ZStack {
            VStack(spacing: 0.0) {
                NaviagtionBarComponent()
                    .padding()
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                Spacer()
                FooterComponent()
                    .padding(.horizontal)
            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all , edges: .all))
        }//: ZSTACK
        .ignoresSafeArea(.all , edges: .top)
      
    } 
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12") 
    }
}
