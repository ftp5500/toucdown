//
//  CategoryGridComponent.swift
//  Touchdown
//
//  Created by Ali on 28/09/2022.
//

import SwiftUI

struct CategoryGridComponent: View {
    @State private var categories:[Category] = Bundle.main.decode("category.json")
    var body: some View {
        ScrollView(.horizontal , showsIndicators: false){
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacign, pinnedViews: []) {
                Section(
                    header: SecctionComponent(rotateClockwise: false),
                    footer:SecctionComponent(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemComponent(category: category)
                    }
                }//: FOREACH
            }//: GRID
            .frame(height:140)
            .padding(.horizontal , 15)
            .padding(.vertical , 10)
        }//: SCROLL
    }
}

struct CategoryGridComponent_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridComponent()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
