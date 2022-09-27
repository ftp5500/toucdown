//
//  LogoComponent.swift
//  Touchdown
//
//  Created by Ali on 27/09/2022.
//

import SwiftUI

struct LogoComponent: View {
    var body: some View {
        HStack(spacing: 4.0){
            Text("touch".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("down".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }//: HSTACK
    }
}


struct LogoComponent_Previews: PreviewProvider {
    static var previews: some View {
        LogoComponent()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
