//
//  AddToCartComponent.swift
//  Touchdown
//
//  Created by Ali on 03/10/2022.
//

import SwiftUI

struct AddToCartComponent: View {
    //MARK: - PROPERTIES
    let product:Product
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
  
    var body: some View {
        Button(action:{} , label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        })
        .padding(15)
        .background(
            Color(
                red: product.red,
                green: product.green,
                blue: product.blue
            )
        )
        .clipShape(Capsule())
    }
}

//MARK: - PREVIEW
struct AddToCartComponent_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartComponent(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
