//
//  ExerciseThree.swift
//  ActivityTwo
//
//  Created by Berenice Medel on 03/01/21.
//

import Foundation

struct ExerciseThree{
    func run(phoneNumber: String) -> Bool {
        let pattern = "^\\([0-9]{2}\\)-[0-9]{2}-[0-9]{4}-[0-9]{4}$"
        let result = phoneNumber.range(of: pattern, options: .regularExpression)
        //print(phoneNumber[result!])
        return result != nil
    }
}
