//
//  Car_Listing_AppApp.swift
//  Car Listing App
//
//  Created by Semih Cetin on 12.08.2022.
//

import SwiftUI

@main
struct Car_Listing_AppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CarModel())
        }
    }
}
