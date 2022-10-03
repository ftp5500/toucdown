//
//  BrandItemComponent.swift
//  Touchdown
//
//  Created by Ali on 10/1/22.
//

import SwiftUI

struct BrandItemComponent: View {
    // MARK: - PROPERTIES
    let brand:Brand
    // MARK: - FUNCTIONS
    
    // MARK: - BODY

    var body: some View {
        VStack{
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
            
        }//: VSTACK
        .cornerRadius(12)
        .background(
            RoundedRectangle(cornerRadius: 12) 
                .stroke(.gray , lineWidth: 1)
        )
    }
}
// MARK: - PREVIEW
struct BrandItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemComponent(brand: brands[0])
            .previewLayout(.fixed(width: 120, height: 120))
            .padding()
            .background(colorBackground)
    }
}
 
