// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let explictFloat : Float = 4

let label = "this width is "
let width = 94
let widthlabel = label + String(width) + "."
let widthlabel2 = "this width is \(width)."

let apple = 3
let orange = 5
let appleSummary = "I have \(apple) apples."
let fruitSummary = "I have \(apple + orange) pieces of fruit."

var testArray = [String]()
testArray.append("first element")
let firstelem = testArray[0]
var firstelem2 = testArray[0]
println("testArray has \(testArray.count) elements: \(firstelem)")
testArray += ["second element"]
println("testArray has \(testArray.count) elemnts")

let testArray2 = testArray
println("testArray has \(testArray.count) elements: \(testArray2[0]), \(testArray[1])")

testArray[0] = "hello world"
println("the first element is \(testArray[0])") // do change
println("the first element is \(firstelem)") // do not change
println("the first element is \(firstelem2)") // do not change
println("the first element is \(testArray2[0])") // do not change

testArray.append("third element")
println("the third elem is \(testArray[2])")
println("testArray2 has \(testArray2.count) elements.") // do not change



struct Person {
    let name : String
    var age : Int? // optional type
}

var me = Person(name: "Yuki", age: nil)
me.age = 23

var sister = Person(name: "Momoka", age: 18)

/*
let me = Person(name : "Yuki", age: nil)
me.age = 23
-> compile error. must be var me = ...
*/

var personArray = [Person]()
personArray.append(me)

var mother = Person(name: "Manami", age: nil)

personArray += [sister, mother]

