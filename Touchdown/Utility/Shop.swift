//
//  Shop.swift
//  Touchdown
//
//  Created by Ali on 03/10/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct:Bool = false
    @Published var selectedProducr:Product? = nil
}
