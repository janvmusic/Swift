import Foundation
import Darwin

println("Hello, World!")

// Variable declaration
var x = 1.5 // variable double, use alt+clic to check the type. Type inference
var xFloat = Float(x) // There we can use a float value
var xFloatScala:Float = 1.5 // Scala type :D!!!

// Constant, like val in Scala
let y = "Hello"
// y = "World" a constant cannot be modified
// Swift does not use cast

// Optionals!
// Note: only values maked as optionals can use nil and the default value is nil
var years: Int?
years = inputNum("How old are you?")

if years != nil {
    println("You are \(years!)s old") // Swift uses '!' to unpackage an optional
}

// abbreviations
if let tmp = years {
    println("You are \(12*tmp) months old")
}

let yearsInMonts: Int! = inputNum("How old are you?") ?? 0
println("You are \(12*yearsInMonts) months old")


// Switch
switch years! {
case 18...30:
    println("Hire")
case 0...17:
    println("Avoid")
default:
    println("Damn! you are too old")
}

// Loops
for i in 24..<30 {
    println(i)
}




