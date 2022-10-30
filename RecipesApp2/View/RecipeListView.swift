//
//  RecipeListView.swift
//  RecipesApp2
//
//  Created by Wojciech Zakroczymski on 30/10/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @ObservedObject var model = RecipeViewModel()
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("All recipes")
                .font(.largeTitle)
                .bold()
            ScrollView {
               
                LazyVStack(alignment: .leading) {
                    
                    ForEach (model.recipes) { recipe in
                        HStack {
                            Image(recipe.image)
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text(recipe.name)
                        }
                        .padding(.vertical, 10)
                    }
                }
                
                
            }
        }
        .padding()
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
