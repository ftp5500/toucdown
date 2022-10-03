//
//  HeaderDetailsComponent.swift
//  Touchdown
//
//  Created by Ali on 10/2/22.
//

import SwiftUI

struct HeaderDetailsComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct HeaderDetailsComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailsComponent()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
