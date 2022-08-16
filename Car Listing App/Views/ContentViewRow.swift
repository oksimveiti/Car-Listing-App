//
//  ContentViewRow.swift
//  Car Listing App
//
//  Created by Semih Cetin on 13.08.2022.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var cars: CarModel
    
    var image: String
    var brand: String
    
    var body: some View {
        
        ZStack{
            Color.offWhite
            
            VStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.offWhite)
                    .frame(width: 300,
                           height: 300)
                    .shadow(color: Color.black.opacity(0.2),
                            radius: 10,
                            x: 10,
                            y: 10)
                    .shadow(color: Color.white.opacity(0.7),
                            radius: 10,
                            x: -5,
                        y: -5)
            }

            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(brand)
                    .bold()
                    .font(.title)
                    .shadow(color: .black,
                            radius: 2,
                            x: -1 ,
                            y: 1)
            }
            
            
        }
        .ignoresSafeArea()
    }
}

struct ContentViewRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewRow(image: "civic", brand: "Honda Civic")
    }
}
