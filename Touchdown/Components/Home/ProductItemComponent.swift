//
//  ProductItemComponent.swift
//  Touchdown
//
//  Created by Ali on 10/1/22.
//

import SwiftUI

struct ProductItemComponent: View {
    // MARK: - PROPERTIES
    let product:Product
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            //: PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
            }//: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            //: NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
                
            //: PRICE
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }//: VSTACK
       
    }
}
// MARK: - PREVIEW
struct ProductItemComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemComponent(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
