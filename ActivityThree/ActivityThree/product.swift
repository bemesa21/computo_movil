//
//  product.swift
//  ActivityThree
//
//  Created by Berenice Medel on 01/02/21.
//

import Foundation

class Product    {
    let name: String
    let price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
    
    func getPriceByOrder(num: Int) -> Int {
        return self.price * num
    }
    
    func getPrice() -> Int{
        return self.price
    }
}

class Taco: Product {
    let type: String
    
    init(type: String, price:Int) {
        self.type = type
        super.init(name: "Taco de \(type)", price: price)
    }
}
