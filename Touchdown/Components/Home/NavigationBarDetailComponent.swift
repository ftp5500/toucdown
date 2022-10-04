//
//  NavigationBarDetailComponent.swift
//  Touchdown
//
//  Created by Ali on 10/2/22.
//

import SwiftUI

struct NavigationBarDetailComponent: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop:Shop
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
    //MARK: - PREVIEW
    var body: some View {
        HStack {
            Button {
                feedback.impactOccurred()
                shop.selectedProducr = nil
                shop.showingProduct = false
                
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }

          
            Spacer()
            
            // MARK: - BUTTON CART
          
            Button {} label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }//: HSTACK
    }
}

struct NavigationBarDetailComponent_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailComponent()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
