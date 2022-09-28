//
//  SecctionComponent.swift
//  Touchdown
//
//  Created by Ali on 28/09/2022.
//

import SwiftUI

struct SecctionComponent: View {
    //MARK: - PROPERTIES
@State  var rotateClockwise:Bool
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
   
    var body: some View {
        VStack (spacing:0){
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
                
            Spacer()
        }//: HSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}
//MARK: - PREVIEW
struct SecctionComponent_Previews: PreviewProvider {
    static var previews: some View {
        SecctionComponent(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .background(colorBackground)
            .padding()
    }
}
