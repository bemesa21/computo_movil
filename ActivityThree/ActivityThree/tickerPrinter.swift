//
//  tickerPrinter.swift
//  ActivityThree
//
//  Created by Berenice Medel on 01/02/21.
//

import Foundation

class TicketPrinter{
    static func printTicket(order: Order){
        let allProducts = order.getProducts().reduce(into: [String : (number: Int, total: Int)]()) { result, product in
            if let acc = result[product.name]{
                result[product.name] = (acc.number + 1, acc.total + product.getPrice())
            }else{
                result[product.name] = (number: 1, total: product.getPrice())
            }
            
        }
        print(allProducts)
        for (key, value) in allProducts{
            print("\(key)\t\(value.number)\t\(value.total)")
        }
    }
}
