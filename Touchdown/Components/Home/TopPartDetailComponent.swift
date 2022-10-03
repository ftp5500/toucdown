//
//  TopPartDetailComponent.swift
//  Touchdown
//
//  Created by Ali on 10/2/22.
//

import SwiftUI

struct TopPartDetailComponent: View {
    // MARK: - PROPERTIES
    @State var isAppear:Bool = false
    var product:Product
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    
    
    var body: some View {
        HStack(alignment:.center , spacing:6) {
            //: PRICE
            VStack(alignment:.leading, spacing:6) {
                Text("Price")
                    .font(.callout)
                Text("$\(product.price)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.black)
                    .scaleEffect(1.35 , anchor: .leading)
                    .padding(.bottom , 100)
                
            }
            .offset( y: isAppear ? 0 : -75)
            Spacer()
            //: PHOTO
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset( y: isAppear ? 0 : -35)
            
            
        }
        
        .opacity(isAppear ? 1 : 0)
        .padding()
        .onAppear {
            withAnimation(.easeInOut(duration: 0.75)){
                isAppear = true
            }
        }
    }
}

// MARK: - PREVIEW
struct TopPartDetailComponent_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailComponent(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
