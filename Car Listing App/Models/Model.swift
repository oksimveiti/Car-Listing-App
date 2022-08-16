//
//  Model.swift
//  Car Listing App
//
//  Created by Semih Cetin on 13.08.2022.
//

import Foundation

struct Model: Decodable, Identifiable {
    
    var id : Int
    var brand: String
    var model: String
    var year: String
    var image: String
    var price: Int
    var pros: [String]
    var cons: [String]
    
}
