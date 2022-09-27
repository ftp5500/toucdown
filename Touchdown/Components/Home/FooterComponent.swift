//
//  FooterComponent.swift
//  Touchdown
//
//  Created by Ali on 26/09/2022.
//

import SwiftUI

struct FooterComponent: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10.0) {
            Text("We offer the most cutting edge comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyrighy © Ali Aljabri\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(1)
        }//: VSTACK
        .padding()
    }
}

struct FooterComponent_Previews: PreviewProvider {
    static var previews: some View {
        FooterComponent()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
