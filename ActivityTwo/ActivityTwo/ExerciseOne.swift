//
//  ExerciseOne.swift
//  ActivityTwo
//
//  Created by Berenice Medel on 03/01/21.
//

import Foundation

struct ExerciseOne{
    func run(n: Int) -> Int {
        if n == 0 {
            return 1
        }else{
            return 2 * run(n: n - 1)
        }
    }
}

