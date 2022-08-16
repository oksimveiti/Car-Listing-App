//
//  CarModel.swift
//  Car Listing App
//
//  Created by Semih Cetin on 13.08.2022.
//

import Foundation

class CarModel: ObservableObject {
    
    // List of modules
    @Published var model = [Model]()
    
    
    init() {
        
        getLocalData()
        
    }
    
    
    // MARK: - Data methods
    
    func getLocalData() {
        
        // Get a url to the JSON data
        let jsonURL = Bundle.main.url(forResource: "cars", withExtension: "json")
        
        do {
            //  Read the file into a data object
            let jsonData = try Data(contentsOf: jsonURL!)
            
            // Try to decode the JSON into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Model].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.model = modules
            
        }
         
        catch {
            // TODO log error
            print("Couldn't parse local data")
        }
    }
}

