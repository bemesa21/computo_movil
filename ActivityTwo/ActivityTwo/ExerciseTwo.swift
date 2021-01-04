//
//  ExerciseTwo.swift
//  ActivityTwo
//
//  Created by Berenice Medel on 03/01/21.
//

import Foundation

struct ExerciseTwo{
    func run(a: Int, b: Int) -> Decimal{
        let result =
            Array(1...b).reduce(0,{
            x, y  in x + pow(Decimal(y), a)
        })
        return result
    }
}
