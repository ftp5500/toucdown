//
//  ContentView.swift
//  Touchdown
//
//  Created by Ali on 26/09/2022.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    let keyWindow = UIApplication.shared.connectedScenes
        .filter({$0.activationState == .foregroundActive})
        .compactMap({$0 as? UIWindowScene})
        .first?.windows
        .filter({$0.isKeyWindow}).first
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    
    var body: some View {
        ZStack {
            VStack(spacing: 0.0) {
                NaviagtionBarComponent()
                    .padding(.horizontal)
                    .padding(.bottom)
                    .padding(.top, keyWindow?.safeAreaInsets.top)
                    .padding(.top , 30) 
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
              
                
                
                ScrollView(.vertical , showsIndicators: false){
                    VStack(spacing:0.0) {
                        FeauturedTabComponent()
                            .frame(minHeight:256)
                            .padding(.vertical , 10)
                        
                        
                        CategoryGridComponent()
                            
                        
                        FooterComponent()
                            .padding(.horizontal)
                    }//: VSTACK
                }//: SCROLL
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
