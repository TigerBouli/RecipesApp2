//
//  RecipeViewModel.swift
//  RecipesApp2
//
//  Created by Wojciech Zakroczymski on 30/10/2022.
//

import Foundation


class RecipeViewModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    var currectRecipe: Recipe?
    
    init() {
        recipes = DataReader.readLocalData()
    }
    
}
