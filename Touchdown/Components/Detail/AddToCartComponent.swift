//
//  AddToCartComponent.swift
//  Touchdown
//
//  Created by Ali on 03/10/2022.
//

import SwiftUI

struct AddToCartComponent: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop:Shop
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
  
    var body: some View {
        Button(action:{
            feedback.impactOccurred()
        } , label: {
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
                red: shop.selectedProducr?.red ?? sampleProduct.red,
                green: shop.selectedProducr?.green ?? sampleProduct.green,
                blue: shop.selectedProducr?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

//MARK: - PREVIEW
struct AddToCartComponent_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartComponent()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
