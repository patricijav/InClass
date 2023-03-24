import UIKit

// To run code press on the line number and it will run code only until that line

// This is a single-line comment

/*
Multi-line comment
*/

// Keywords like var, import, etc. are taken keywords, and they will be dark pink-ish
var greeting = "Hello, playground"

// You can optionally (and it's recommended) add type to the variable
// Declare and initialize in two lines
var swift1: String
swift1 = "Swift1"
// Or in One
var swift2: String = "Swift2"

print(swift1)
print(swift2)

// You can create warnings that will be shown by Xcode
#warning("This is a warning about my code!")

// There are two ways to print stuff
print("Some random text here")
// or
dump("Some random text here")
// One difference is that dump has this - "{text}" syntax

// You can use emojis in strings
var emoji: String = "🐕"
print(emoji)

var multiLineString = """
Text
In
Multiple
Lines
"""

print(multiLineString)

// In some programming languages you need to finish each line with ";", you don't in Swift.

// For variables use camelCase, for example, swiftVersionText

// There are also different types
// :Float

// var ir variable
// let is constant
let pi: Float = 3.14
// pi = 2.17 // This would cause an error, because constants cannot be changed


var someText: String = "12312"
// someText = 2 // Can't assign Int to String

// You can print address in memory
withUnsafePointer(to: someText) {
    print("the value \(someText) inside my apps memory \($0)")
}

var smallA = "a" // string
var smallB: Character = "b" // character

// Variables are cool, because you need to change them in one place and everywhere will update

// Casting string to Integer
var age = 36
var myNextYearAgeWillBe: String = "37"

// let castStringToInt = age + myNextYearAgeWillBe // will throw error
// let castStringToInt = age + Int(myNextYearAgeWillBe) // Still error, need to say we know its a number
let castStringToInt = age + Int(myNextYearAgeWillBe)! // works

let castStringToInt2 = age + (Int(myNextYearAgeWillBe) ?? 0) // Also works


// Let's cast floats and doubles
var myHeight: Float = 193.2
var myWeight: Double = 90.1

// let result = myHeight + myWeight // will throw error, one needs to be cast
let result = Double(myHeight) + myWeight

// Other operation as usual * / -


// There are optionals

// Good link https://www.programiz.com/swift-programming/optionals

// Optional has default value of nil
// To declare optional add ? or !
let someValue:Int? = 5
print(someValue)
print(someValue!)

// if statement
var someValue2:Int?
var someAnotherValue2:Int! = 0
if someValue2 != nil {
    print("It has some value \(someValue2!)")
} else {
    print("doesn't contain value")
}
if someAnotherValue2 != nil {
    print("It has some value \(someAnotherValue2!)")
} else {
    print("doesn't contain value")
}

// Optional bindings
var someValue3:Int?
var someAnotherValue3:Int! = 0
       
if let temp = someValue3 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}
        
if let temp = someAnotherValue3 {
    print("It has some value \(temp)")
} else {
    print("doesn't contain value")
}
