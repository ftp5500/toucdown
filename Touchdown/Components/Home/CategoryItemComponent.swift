//
//  CategoryItemComponent.swift
//  Touchdown
//
//  Created by Ali on 28/09/2022.
//

import SwiftUI

struct CategoryItemComponent: View {
    //MARK: - PROPERTIES
    let category:Category
    //MARK: - FUNCTIONS
    
    //MARK: - BODY
 
  
    var body: some View {
        
        Button {
            
        } label: {
            HStack(alignment:.center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                    
                Text(category.name)
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                Spacer()
                
            }//: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray, lineWidth: 1)
            )
        }//: Button
        .aspectRatio(3, contentMode: .fit)
    }
}
//MARK: - PREVIEW
struct CategoryItemComponent_Previews: PreviewProvider {
static let categories:[Category] = Bundle.main.decode("category.json")
    static var previews: some View {
        CategoryItemComponent(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
