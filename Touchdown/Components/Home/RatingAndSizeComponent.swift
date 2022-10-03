//
//  RatingAndSizeComponent.swift
//  Touchdown
//
//  Created by Ali on 10/3/22.
//

import SwiftUI

struct RatingAndSizeComponent: View {
    @State var sizes:[String] = ["XS", "S","M" , "L" ,"XL"]
    var body: some View {
        HStack {
            VStack(alignment:.leading , spacing: 10) {
                Text("Ratings")
                    .font(.callout)
                    .foregroundColor(colorGray)
                HStack(alignment:.center , spacing:3){
                    ForEach(0...4 , id: \.self){item in
                        Button{
                            
                        } label: {
                            Image(systemName: "star.square.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28, alignment: .center)
                            .foregroundColor(colorGray)
                    }
                    }//: STARS LOOP
                }//: HSTACK
            }//: VSTACK
            
            Spacer()
           
            
            VStack(alignment:.trailing , spacing: 10) {
                Text("Sizes")
                    .font(.callout)
                    .foregroundColor(colorGray)
                    
                HStack (alignment:.center , spacing:5){
                    ForEach(sizes, id: \.self){size in
                        Button {} label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray , lineWidth: 2)
                                )
                        }
                            
                    }//: Size LOOP
                }//: HSTACK
            }//: VSTACK
        }//: HSTACK
        .padding(.horizontal)
    }
}

struct RatingAndSizeComponent_Previews: PreviewProvider {
    static var previews: some View {
        RatingAndSizeComponent()
    }
}
