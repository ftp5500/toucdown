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
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    

    var body: some View {
        HStack(alignment:.center , spacing:20) {
            //: PRICE
            VStack(alignment:.leading) {
                Text("Price")
                    .font(.callout)
                Text("$\(sampleProduct.price)")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.black)
                    .scaleEffect(1.35 , anchor: .leading)
                    .padding(.bottom , 100)

            }
          
            //: PHOTO
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
              
            
        }
        .offset( y: isAppear ? 0 : -50)
        .opacity(isAppear ? 1 : 0)
        .padding()
        .onAppear {
            withAnimation(.easeInOut(duration: 1.5)){
                isAppear = true
            }
        }
    }
}

// MARK: - PREVIEW
struct TopPartDetailComponent_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailComponent()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
