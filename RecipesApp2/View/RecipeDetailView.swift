//
//  RecipeDetailView.swift
//  RecipesApp2
//
//  Created by Wojciech Zakroczymski on 06/11/2022.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(recipe.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 10)
                    ForEach(recipe.ingredients, id:\.self) { ingr in
                        Text("• \(ingr)")
                    }
                }
                .padding()
                Divider()
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.bottom, 10)
                    ForEach( 0..<recipe.directions.count) { index in
                        Text("\(index+1). \(recipe.directions[index])")
                    }
                }
                .padding()
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: RecipeViewModel().recipes[0])
    }
}
