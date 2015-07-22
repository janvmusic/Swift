//
//  main.swift
//  Juego Adivina (Console Version ver. 1.0)
//
//  Created by Alberto Pacheco on 20/07/15.
//  Copyright (c) 2015 Alberto Pacheco. All rights reserved.
//
// Ejercicio:
// 1) Modifica ciclo para ofrecer sólo 12 intentos (si se agotan termina e imprime valor oculto)
// 2) Sustituye los "if num" por una sentencia switch/cases, usando patrones
// 3) Si la entrada no es un número, dar oportunidad de repetir intento (no reducir intentos)

import Foundation

let intentos = 5
let oculto = randomNum(1...1000)

for var i = 1; i < intentos; i++ {
    let num = inputNum("Anota número") ?? 0
    switch num {
    case _ where  num == oculto:
        println("Ganaste")
    case _ where num > 0 && num < oculto:
        println("Piensa un numero mayor")
    case _ where num > 0 && num > oculto:
        println("Piensa un numero menor")
    default:
        i--
        println("Por favor ingresa un valor")
    }
    
    if num==oculto {
        break
    } else if i == intentos {
        println()
    }
}
println("Bye!")
