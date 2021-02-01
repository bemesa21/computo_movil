//
//  facade.swift
//  ActivityThree
//
//  Created by Berenice Medel on 01/02/21.
//

import Foundation

class Facade {
    static func serve() {
        let orderT = OrderTaker()
        orderT.takeOrder()
        let order = orderT.getOrder()
        TicketPrinter.printTicket(order: order)
    }
}
