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
    """, "SUBMARINO - Ingredientes: Tequila 30ml, Cerveza oscura 180ml - Procedimiento: Rellenar el caballito con tequila, colocarlo dentro del vaso old fashioned y rellenar con cerveza oscura.", "SUNRISE - Ingredientes: Tequila reposado 60ml, jugo de naranja 100ml, granadina 30ml, hielo 100g - Procedimiento: Agregar en el vaso Collins hielo, el tequila y rellenar con jugo de naranja y mandar al fondo la granadina con ayuda de una bailarina", "BRASS MONKEY - Ingredientes: Ron oscuro 32ml, zumo de naranja 60ml, jarabe natural 15ml, rodaja de naranja 5g, cerveza oscura 150ml - Procedimiento: Agregar ron oscuro, zumo de naranja y jarabe natural y rellenar con cerveza oscura. Decorar con rodaja de naranja.", "BRODWAY - Ingredientes: Refresco de cola 270ml, cerveza oscura 270ml - Procedimiento: Agregar en un vaso cervecero la mitad de la cerveza oscura y la mitad del refresco de cola.", "CARIBE NIGHT - Ingredientes: Kalhúa 270ml, Malibu 15ml, Refresco de cola sabor cereza 15ml, cerveza oscura 100ml - Procedimiento: Agregar en un vaso cervecero el Kalhúa, Malibú, refresco de cola sabor cereza. Rellenar con cerveza oscura.", "CASEN BAM - Ingredientes: Café exprés 60ml, jack Daniels 22ml, cerveza oscura 100ml, hielo frappe 100g - Procedimiento: Elaborar en una cafetera el café exprés. Moler el hielo junto con el café. Dentro del vaso colocar el café, Jack Daniels y rellenar con cerveza oscura.", "ICE WATER - Ingredientes: Curacao 15ml, Jugo de piña 60ml, jarabe natural 30ml, cerveza lagger 50ml - Procedimiento: Agregar jarabe natural, curacao, jugo de piña y rellenar con cerveza lagger.", "LIQUID VIAGRA - Ingredientes: Vodka 30ml, mezcla de cítricos 15ml, cerveza clara 30ml, té de limón 30ml, red bull 30ml. - Procedimiento: Agregar vodka dentro de la copa, mezcla de cítricos, te de limón, cerveza clara y rellenar con red bull", "LIVERPOOL KID - Ingredientes: Licor de caris 5ml, jarabe natural 15ml, cerveza oscura 130ml. - Procedimiento: Agregar jarabe natural, licor de caris y rellenar con cerveza oscura."
    ]
    func run(ingredients: [String]) -> [String] {
        let lowercased_ingredients =  ingredients.map({$0.lowercased()})
        let result =  recipes.filter({lowercased_ingredients.contains(where: $0.lowercased().contains)})
        return result
    }
}
