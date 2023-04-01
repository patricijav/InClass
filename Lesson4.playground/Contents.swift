// Lesson 4 (Lesson 3 in lecturer's index)

import UIKit

print("Yes!")

// Functions

multiplyTwoNumbers() // You can also call them before declaration (or maybe not, he proved himself wrong)

func multiplyTwoNumbers() {
    print("result will be: ", 3 * 3)
}

multiplyTwoNumbers()

func multiplyNumber() -> Int {
    let a = 5
    let b = 2
    
    return a * b
}

multiplyNumber()

func multiplyNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    return a * b
}

multiplyNumbers(numberOne: 5, numberTwo: 10)

func multiplyNumber(_ a: Int, _ b: Int) -> Int {
    return a * b
}

multiplyNumber(5, 10)

func multiplyNumbers(_ a: Int, multiply b: Int) -> Int {
    return a * b
}

multiplyNumbers(5, multiply: 10)

// underscore is a no name argument
func average(_ myNumbers: Double...) -> Double {
    var total: Double = 0.0
    for numb in myNumbers {
        total += numb
    }
    return total / Double(myNumbers.count)
}

average(5, 10, 5, 10)

let someValue = 5
let arrayOfNumbers = [1, 2, 4, 5, 6, 8, 0, 20]

func filterLessThan(intValue: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    
    for numb in numbers {
        if numb < intValue {
            filteredNumbers.append(numb)
        }
    }
    
    return filteredNumbers
}

filterLessThan(intValue: someValue, numbers: arrayOfNumbers)



// Double click function to fold it, double click to get it back (or command + click, right click?)
func calculateDateValue(from myDay: Int, _ myMont: Int, _ myYear: Int) {
    let currentDate = Date()
    
    var dateComponents = DateComponents()
    dateComponents.day = myDay
    dateComponents.month = myMont
    dateComponents.year = myYear
    
    let userCalendar = Calendar.current
    
    if let calculateDate = userCalendar.date(from: dateComponents) { // If the values aren't bad, dateComponents might need small letters
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year
        
        print("\(yearPassed ?? 0) years, \(monthPassed ?? 0) months and \(dayPassed ?? 0) days have passed since")
    }
}

// tab move to next part that needs a value
calculateDateValue(from: 1, 5, 1996)
