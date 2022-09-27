//
//  NaviagtionBarComponent.swift
//  Touchdown
//
//  Created by Ali on 26/09/2022.
//

import SwiftUI

struct NaviagtionBarComponent: View {
    //MARK: - PROPERTIES
    @State private var isAnimated:Bool = false
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }//: BUTTON
            Spacer()
            
            
            
            
            LogoComponent()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)     
                .onAppear {
                    withAnimation(.easeInOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            
            
            
            Spacer()
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }//: ZStack
            }//: BUTTON
        }//: HSTACK
    }
}
//MARK: - PREVIEW
struct NaviagtionBarComponent_Previews: PreviewProvider {
    static var previews: some View {
        NaviagtionBarComponent()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
