//
//  BrandsGridComponent.swift
//  Touchdown
//
//  Created by Ali on 10/1/22.
//

import SwiftUI

struct BrandsGridComponent: View {
    // MARK: - PROPERTIES
    
    // MARK: - FUNCTIONS
    
    // MARK: - BODY
    
   
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false) {
            LazyHGrid(rows: gridLayout ,alignment: .center , spacing: columnSpacign , pinnedViews: []){
                ForEach(brands){brand in
                    BrandItemComponent(brand:brand)
                }//: LOOP
            }//: GRID
            .frame(height:200)
            .padding(15)
            
        }//: SCROLL
    }
}
// MARK: - PREVIEW
struct BrandsGridComponent_Previews: PreviewProvider {
    static var previews: some View {
        BrandsGridComponent()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
