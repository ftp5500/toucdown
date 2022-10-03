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
                    .foregroundColor(.gray)
                HStack{
                    ForEach(0...5 , id: \.self){item in
                        Button{
                            
                        } label: {
                            Image(systemName: "star.square.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24, alignment: .center)
                            .foregroundColor(colorGray)
                    }
                    }//: STARS LOOP
                }//: HSTACK
            }//: VSTACK
            
            Spacer()
           
            
            VStack(alignment:.trailing , spacing: 10) {
                Text("Sizes")
                    .font(.callout)
                    .foregroundColor(.gray)
                    
                HStack (spacing:20){
                    ForEach(sizes, id: \.self){size in
                        
                        Button {
                        
                        } label: {
                            Text(size)
                            
                                .foregroundColor(colorGray)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray , lineWidth: 1)
                                        .frame(width: 30, height: 24, alignment: .center)
                                        .padding()
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
