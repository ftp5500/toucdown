//
//  TitleComponent.swift
//  Touchdown
//
//  Created by Ali on 10/1/22.
//

import SwiftUI

struct TitleComponent: View {
    // MARK: - PROPERTIES
    var title:String
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }//: HSTACK
        .padding(.horizontal)
        .padding(.top ,  15)
        .padding(.bottom,10)
        
    }
}
// MARK: - PREVIEW
struct TitleComponent_Previews: PreviewProvider {
    static var previews: some View {
        TitleComponent(title: "Helmets")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
   
    }
}
