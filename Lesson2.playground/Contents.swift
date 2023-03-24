import UIKit

// This is the useful code from 22.03.2023

var myNameIs: (String, String) = ("A", "M")
var myBossIs: (String, String, Int) = ("Jack", "Ted", 44)
var tupleText = "my boss name is \(myBossIs.0) and he is \(myBossIs.2) years old."
print(tupleText)

// var myBoss = (name: "Mike", surname: "Doe", age: 22)
// print(myBoss.age)
// Above code is fine, but let's name age to personAge, so it doesn't battle with Swift's taken keywords
var myBoss = (name: "Mike", surname: "Doe", personAge: 22)
print(myBoss.personAge)

// Operators
let numberOne: Int = 9
let numberTwo: Int = 4
print(numberOne + numberTwo)
print(numberOne - numberTwo)
print(numberOne * numberTwo)
print(numberOne / numberTwo)
print(numberOne % numberTwo)

// > < >= <= == !=
var myNumber: Int = 3
if myNumber < 4 {
    print("< 4")
} else if myNumber > 10 && myNumber < 20 {
    print("> 10 && < 20")
} else {
    print("Neither")
}
// Executes only one, never two

// Note: You can format code by: Cmd + A, Ctrl + I

let letter = "C"
switch letter {
case "c", "C":
    print("Our letter is c or C")
case "d":
    print("Our letter is d")
default://else
    print("No idea")
}

var planetCount: Int = 8
switch planetCount {
case 0:
    print("0")
case 1...4:
    print("1....4")
case 5,6,7:
    print("5,6,7")
case 12...:
    print("12...")
default:
    print("I don't know. 8?")
}
// Only one of these will happen


// WE could hav enamed it level, but it was colored, so rather not
let accessLevel: Character = "B"
switch accessLevel {
case "A":
    print("You have A area access")
    fallthrough
case "B":
    print("You have B area access")
default:
    break
}
