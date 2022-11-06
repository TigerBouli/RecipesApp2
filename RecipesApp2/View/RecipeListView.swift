//
//  RecipeListView.swift
//  RecipesApp2
//
//  Created by Wojciech Zakroczymski on 30/10/2022.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model: RecipeViewModel
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("All recipes")
                    .font(.largeTitle)
                    .bold()
                ScrollView {
                   
                    LazyVStack(alignment: .leading) {
                        
                        ForEach (model.recipes) { recipe in
                            
                            
                            
                            
                            NavigationLink {
                                RecipeDetailView(recipe: recipe)
                            } label: {
                                HStack {
                                    Image(recipe.image)
                                        .resizable()
                                        .frame(width: 50, height: 50)
                                        .cornerRadius(5)
                                    Text(recipe.name)
                                }
                                .padding(.vertical, 10)
                                .accentColor(.black)
                            }
                        }
                    }
                    
                    
                }
            }
            .padding()
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeViewModel())
    }
}
