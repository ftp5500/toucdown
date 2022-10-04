//
//  Constants.swift
//  Touchdown
//
//  Created by Ali on 26/09/2022.
//

import Foundation
import SwiftUI

//: DATA
//let players:[Player] = Bundle.main.decode("players.json")
//let categories:[Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
let brands:[Brand] = Bundle.main.decode("brand.json")
let sampleProduct:Product = products[0]
//: COLOR
let colorBackground:Color = Color("ColorBackground")
let colorGray:Color = Color(uiColor: UIColor.systemGray4)

//: LAYOUT
let columnSpacign:CGFloat = 10
let rowSpacign:CGFloat = 10
var gridLayout:[GridItem]  {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacign), count: 2)
}
//: UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
//: API
//: IMAGE
//: FONT
//: STRING
//: MISC
