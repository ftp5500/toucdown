//
//  HeaderDetailsComponent.swift
//  Touchdown
//
//  Created by Ali on 10/2/22.
//

import SwiftUI

struct HeaderDetailsComponent: View {
    //MARK: - PROPERTIES
    let product:Product
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    //MARK: - PREVIEW
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
                .foregroundColor(.white)
            
            Text(product.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
    }
}

struct HeaderDetailsComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailsComponent(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
