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
    
    var product:Product
    @EnvironmentObject var shop:Shop
    
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
                .zIndex(2)
            //: DETAIL BOTTOM PART
          
                VStack(alignment:.center , spacing:0){
                    //: RATING + SIZE
                    RatingAndSizeComponent()
                        .padding(.top , -20)
                        .padding(.bottom , 10)
                    //: DESCRIPTION
                    ScrollView(.vertical , showsIndicators: false){
                        Text(shop.selectedProducr?.description ?? sampleProduct.description)
                            .font(.system(.body , design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
        
                    }//: SCROLL
                    //: QUANTITY + FAVOURITE
                    QuantityDetailComponent()
                        .padding(.vertical , 10)
                    //: ADD TO CART
                    AddToCartComponent()
                        .padding(.bottom)
                }//: VSTACK
                .padding(.horizontal)
                .background(
                    Color.white
                        .clipShape(CustomShape())
                        .padding(.top ,  -105)
                )
        }//: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all , edges: .all)
        .background(
            Color(
                red: shop.selectedProducr?.red ?? sampleProduct.red,
                green: shop.selectedProducr?.green ?? sampleProduct.green,
                blue: shop.selectedProducr?.blue ?? sampleProduct.blue
            )
            .ignoresSafeArea(.all , edges: .all)
        )
        
    }
}
// MARK: - PREVIEW
struct ProductDetailComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        ProductDetailComponent(product: products[4])
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}


