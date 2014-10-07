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

var a = [1, 2, 3]
var b = a
var c = a

a[0] = 0
println("a[0]: \(a[0]), b[0]: \(b[0]), c[0]: \(c[0])")


struct Person {
    var name : String
    var age : Int? // optional type
}

/*
定義の時点で初期値が入っていない場合は instanciate のときに初期値を入れないといけない
i.e. 
var/let name : String 
var/ let age : Int
などとした場合
*/

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

// class has reference type!!!

class Family {
    var father = Person(name: "", age: nil)
    var mother = Person(name: "", age: nil)
    var children = [Person]()
}

let myFamily = Family()

myFamily.father.name = "Nobuaki"
myFamily.mother.name = "Manami"
myFamily.children += [me, sister]

var herFamily = myFamily
herFamily.father.name = "Totaro"

println("her father is \(herFamily.father.name)") // change
println("my father is \(myFamily.father.name)") // DO CHANGE!!

var str1 : String
str1 = "hello, world"
var str2 = str1
str2 = "bonjour, le monde"
println("str1: \(str1), str2: \(str2)")
var len = countElements(str1)
println("the length of str1: \(len)")

var str3 : NSString
str3 = "hello, world"
var str4 : NSString
str4 = str3
str4 = "bonjour, le monde"
println("str1: \(str1), str2: \(str2)")

// componentsSeparatedByString
let doubleStr = "100.512"
let arr = doubleStr.componentsSeparatedByString(".") // ["100", "512"]
for a in arr {
    println("\(a)")
}

let doubleStr2 = "100"
let arr2 = doubleStr2.componentsSeparatedByString(".") // ["100"]
