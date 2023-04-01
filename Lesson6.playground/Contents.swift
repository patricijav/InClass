import UIKit

// Enumeration

var someDay = "Friday"

func setupAlarm() {
    if someDay == "friday" {
        print("setup my alarm at 8:00AM")
    } else {
        print("no alarm")
    }
}

setupAlarm()


enum Weekday {
    case monday
    case tuesday
    case wednesday, thursday, friday
    case saturday, sunday
}

var weekday = Weekday.sunday

func setupBedTime() {
    if weekday == .sunday || weekday == .tuesday {
        print("setup my bed time at 11:00PM")
    } else {
        print("no alarm")
    }
}

setupBedTime()



func setupSleepAlarm() {
    switch weekday {
    case .monday:
        print("setup my bed time at 11:00PM")
    case .tuesday:
        print("setup my bed time at 11:00PM")
    case .wednesday:
        print("setup my bed time at 11:00PM")
    case .thursday:
        print("setup my bed time at 11:00PM")
    case .friday:
        print("setup my bed time at 11:30PM")
    case .saturday:
        print("setup my bed time at 11:00PM")
    case .sunday:
        print("setup my bed time at 11:00PM")
    }
}

weekday = .friday
setupSleepAlarm()

// enum holds unique values

enum CalculationType: String {
    case addition = "+"
    case subtraction = "-"
    case multiplication = "*"
    case division = "/"
}

var calc = CalculationType.addition

print(calc.rawValue)


// Order actually is Me V Z Ma J S U N
enum Planet: Int {
    case mercury = 1, mars, saturn, venus, earth, jupiter, uranus, neptun
}

var earthPlanet = Planet.earth
print("earth is the \(earthPlanet.rawValue) planet from the sun")


enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("setup bet time at", 11, "PM")


// Structs
// they are unique, they can't inherit
// structs will create new one

struct ChessBoard {
    
    var player: String?
    var x: Int?
    var y: Int?
    
    func getPositionOnTheBoard() {
        print("The position of \(player ?? "Robot") is x:\(x ?? 0), y: \(y ?? 0)")
    }
}

var playerOne = ChessBoard(player: "Tom", x: 12, y: 1)
var playerTwo = ChessBoard(player: "Sam", x: 3, y: 1)

playerOne.getPositionOnTheBoard()
playerTwo.getPositionOnTheBoard()


class MacBook {
    
    var model: String
    var year: Int
    var color: String
    
    init(model: String, year: Int, color: String) {
        self.year = year
        self.model = model
        self.color = color
    }
    
    func getSpecs() {
        print("\(model), \(year), \(color)")
    }
}

let macBookPro = MacBook(model: "MacBookPro", year: 2019, color: "Grey")

let macBookAir = macBookPro

macBookAir.model = "MacBook Air"
macBookAir.year = 2023

// Uses same memory
macBookPro.getSpecs()
macBookAir.getSpecs()



struct iPhone {
    var model: String?
    var year: Int?
    var color: String?
    
    func getSpecs() {
        print("\(model ?? "error"), \(year ?? 0), \(color ?? "none")")
    }
}

let iPhoneXR = iPhone(model: "iPhoneXR", year: 2018, color: "black")

var iPhoneXS = iPhoneXR

iPhoneXS.model = "iPhoneXS"

// Doesn't use the same memory
iPhoneXR.getSpecs()
iPhoneXS.getSpecs()
