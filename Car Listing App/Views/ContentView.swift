//
//  ContentView.swift
//  Car Listing App
//
//  Created by Semih Cetin on 12.08.2022.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 225 / 255, green: 225 / 255, blue: 235 / 255)
}

struct ContentView: View {
    
    @EnvironmentObject var cars: CarModel
    
    var body: some View {

        ZStack {
            Color.offWhite
                .ignoresSafeArea()
            
            ScrollView {
                LazyVStack {
                  ForEach(cars.models) { model in
                    ContentViewRow(image: model.image, brand: model.brand)
                  }
                }
                .padding(.bottom, 20)
            }
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CarModel())
    }
}
