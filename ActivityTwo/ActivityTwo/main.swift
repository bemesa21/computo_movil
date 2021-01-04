//
//  main.swift
//  ActivityTwo
//
//  Created by Berenice Medel on 03/01/21.
//

import Foundation

var exercise: Int
var n: Int
var a: Int
var b: Int
var phoneNumber: String
var ingredients: String
var recipes: [String]
var numbers: [Int]


repeat {
    print("""
        \n\nElije un ejercicio\n\
        1) Calcular 2 elevado a la n usando recursividad\n\
        2) Dados a y b como números enteros, realizar la sumatoria de: 1^a + 2^a + 3^a ... b^a\n\
        3) Dada una cadena introducida por el usuario validar si es un número telefónico con la siguiente estructura:\
        (nn)-nn-nnnn-nnnn\n\
        4) Buscaré recetas para ti\n\
        5) Dado un array de enteros, retornar un array con la multiplicación de todos los enteros diferentes al índice i\n\
        6)Salir
        """)
    exercise  = Int(readLine() ?? "6")!
        switch exercise {
        case 1:
            print("Dame un entero n mayor o igual a 0\n")
            n = Int(readLine()!)!
            if n >= 0 {
                print("2^\(n) = \(ExerciseOne().run(n: n))")
            }else{
                print("valor inválido")
            }
            
        case 2:
            print("Dame a:")
            a = Int(readLine()!)!
            print("Dame b:")
            b = Int(readLine()!)!
            print("Resultado: \(ExerciseTwo().run(a: a, b: b))")
        case 3:
            phoneNumber = readLine()!.trimmingCharacters(in: .whitespacesAndNewlines)
            print(phoneNumber)
            if ExerciseThree().run(phoneNumber: phoneNumber){
                print("Número válido")
            }else{
                print("Número inválido")
            }
        case 4:
            print("Dame los ingredientes separados por coma y un espacio")
            ingredients = readLine()!
            recipes = ExerciseFour().run(ingredients: ingredients.components(separatedBy: ","))
            if recipes.isEmpty{
                print("No encontré recetas :(")
            }else{
                recipes.forEach({print($0)})
            }
        case 5:
            print("Dame un array de numeros separados por coma")
            numbers = readLine()!.components(separatedBy: ",").map({Int($0)!})
            print("Result: \(ExerciseFive().run(numbers: [1, 2, 3, 4, 5]))")
        default:
            print("Adios")
        }
} while exercise != 6;

