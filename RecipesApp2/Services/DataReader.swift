//
//  DataReader.swift
//  RecipesApp2
//
//  Created by Wojciech Zakroczymski on 30/10/2022.
//

import Foundation

struct DataReader {
    
    static func readLocalData() -> [Recipe] {
        
        let url = Bundle.main.url(forResource: "recipes", withExtension: "json")
        
        if let url = url {
            
            do {
                let data = try Data(contentsOf: url)
                
                let recipes = try JSONDecoder().decode([Recipe].self, from: data)
                
                return recipes
                
            } catch {
                print(error)
                return [Recipe]()
            }
            
            
            
        } else {
            return [Recipe]()
        }
    }
}
