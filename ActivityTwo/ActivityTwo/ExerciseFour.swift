//
//  ExerciseFour.swift
//  ActivityTwo
//
//  Created by Berenice Medel on 03/01/21.
//

import Foundation

struct ExerciseFour{
    let recipes: [String] = [
    """
    Pay de Limon \n\
    Ingredientes\n\
    Batido de limón:\
    180 g Queso Crema Philadelphia\
    1 lata de leche condensada\
    1 lata de leche evaporada\
    ½ tza. de jugo de limón\
    1 cdta. de ralladura de limón para decorar\
    2 tzas. de galleta molida\
    90 g de mantequilla
    """
    ]
    func run(ingredients: [String]) -> [String] {
        let lowercased_ingredients =  ingredients.map({$0.lowercased()})
        let result =  recipes.filter({lowercased_ingredients.contains(where: $0.lowercased().contains)})
        return result
    }
}
