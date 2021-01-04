//
//  ExerciseFive.swift
//  ActivityTwo
//
//  Created by Berenice Medel on 03/01/21.
//

import Foundation

struct ExerciseFive {
    func run(numbers: [Int]) -> [Int] {
        let mul_result = numbers.reduce(1, *)
        //print(mul_result)
        let result = numbers.map({mul_result / $0 })
        return result
    }
}
