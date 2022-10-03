//
//  QuantityDetailComponent.swift
//  Touchdown
//
//  Created by Ali on 03/10/2022.
//

import SwiftUI

struct QuantityDetailComponent: View {
    //MARK: - PROPERTIES
    @State var quantity:Int = 0
    
    @State private var heart:String = "heart"
    //MARK: - FUNCTIONS
    func increaseQuantity()  {
        if quantity < 100 {
            quantity += 1
        }
        
    }
    
    
    func decreaseQuantity()  {
        if quantity > 0 {
            quantity -= 1
        }
    }
    //MARK: - BODY
    //MARK: - PREVIEW
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            
            Button {decreaseQuantity()} label: {Image(systemName: "minus.circle")}
            
            Text("\(quantity)")
                .frame(minWidth:36)
            
            Button {increaseQuantity()} label: {Image(systemName: "plus.circle")}
            
            Spacer()
            Button {
                withAnimation(.easeIn(duration: 0.5)){
                    if heart == "heart" {
                        heart = "heart.fill"
                    }else {
                        heart = "heart"
                    }
                }
            } label: {
                Image(systemName: heart)
                    .foregroundColor(heart == "heart" ? .black : .pink)
            }
            
            
        }//: HSTACK
        .font(.system(.title2 , design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityDetailComponent_Previews: PreviewProvider {
    static var previews: some View {
        QuantityDetailComponent()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
