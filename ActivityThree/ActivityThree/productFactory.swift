//
//  productFactory.swift
//  ActivityThree
//
//  Created by Berenice Medel on 01/02/21.
//

import Foundation

class ProductFactory{
    static func getProduct(type: String) -> Product {
        //let tacos_types: [String: Int] = ["suadero": 12, "longaniza":10, "pastor": 12, "carnitas": 20]
        
        switch type {
        case "suadero":
            return Taco(type: "suadero", price: 12)
        case "longaniza":
            return Taco(type: "longaniza", price: 10)
        case "pastor":
            return Taco(type: "pastor", price: 12)
        case "carnitas":
            return Taco(type: "carnitas", price: 20)
        case "limon":
            return Product(name: "limon", price: 3)
        case "cebolla":
            return Product(name: "cebolla", price: 2)
        case "cilantro":
            return Product(name: "cilantro", price: 2)
        case "salsa":
            return Product(name: "salsa", price: 10)
        case "queso":
            return Product(name: "queso", price: 3)
        default:
            return Product(name: "invalid", price: 0)
        }
    }
}
