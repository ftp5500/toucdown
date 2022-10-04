//
//  ProducusGridComponent.swift
//  Touchdown
//
//  Created by Ali on 10/1/22.
//

import SwiftUI

struct ProductsGridCompnent: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop:Shop
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    //MARK: - PREVIEW
    var body: some View {
        LazyVGrid(columns: gridLayout, spacing:15 ){
            ForEach(products) { product in
                Button(action: {
                  
                    withAnimation(.easeOut){
                        feedback.impactOccurred()
                        shop.showingProduct = true
                        shop.selectedProducr = product
                       
                    }
                    
                },label: {
                    ProductItemComponent(product: product)
                })
               
            }//: LOOP
        }//: GRID
        .padding(15)
    }
}

struct ProducusGridComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductsGridCompnent()
            .environmentObject(Shop())
    }
}
