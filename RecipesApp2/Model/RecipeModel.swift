//
//  RecipeModel.swift
//  RecipesApp2
//
//  Created by Wojciech Zakroczymski on 30/10/2022.
//

import Foundation

struct Recipe: Identifiable, Decodable {
    var id: Int
    var name: String
    var featured: Bool
    var image : String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var ingredients: [String]
    var directions: [String]
}




