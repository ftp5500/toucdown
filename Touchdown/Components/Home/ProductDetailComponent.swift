//
//  ProductDetailComponent.swift
//  Touchdown
//
//  Created by Ali on 10/2/22.
//

import SwiftUI

struct ProductDetailComponent: View {
    // MARK: - PROPERTIES
    let keyWindow = UIApplication.shared.connectedScenes

                .filter({$0.activationState == .foregroundActive})

                .map({$0 as? UIWindowScene})

                .compactMap({$0})

                .first?.windows

                .filter({$0.isKeyWindow}).first

    

    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    
 
    var body: some View {
        VStack(alignment: .leading , spacing: 5) {
            //: NAVBAR
            NavigationBarDetailComponent()
                .padding(.horizontal)
                .padding(.top, keyWindow?.safeAreaInsets.top)
            //: HEADER
            HeaderDetailsComponent()
                .padding(.horizontal)
            //: DETAIL TOP PART
            TopPartDetailComponent()
            //: DETAIL BOTTOM PART
            VStack{
                //: RATING + SIZE
                RatingAndSizeComponent()
                //: DESCRIPTION
                //: QUANTITY + FAVOURITE
                //: ADD TO CART
            }
            Spacer()
        }//: VSTACK
        .ignoresSafeArea(.all , edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
                .ignoresSafeArea(.all , edges: .all)
        )
        
    }
}
// MARK: - PREVIEW
struct ProductDetailComponent_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailComponent()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}


