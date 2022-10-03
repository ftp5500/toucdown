//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Ali on 26/09/2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
