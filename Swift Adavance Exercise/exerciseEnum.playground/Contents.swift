import UIKit
/* 1.) Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7.
    We can be able to get day name as string in short form (sun, mon,...)
    and same full name (Sunday, Monday...) by given number of the day.
    Example. It should return Monday or mon if I pass parameter 1 for get day name. */
enum WeekDays: Int {
    case Monday = 1
    case Tuesday = 2
    case Wednesday = 3
    case Thursday = 4
    case Friday = 5
    case Saturday = 6
    case Sunday = 7
    var shortName: String {
        switch self {
        case .Monday:
            return "mon"
        case .Tuesday:
            return "tue"
        case .Wednesday:
            return "wed"
        case .Thursday:
            return "thur"
        case .Friday:
            return "fri"
        case .Saturday:
            return "sat"
        case .Sunday:
            return "sun"
        }
    }
    var fullName: String {
        switch self {
        case .Monday:
            return "Monday"
        case .Tuesday:
            return "Tuesday"
        case .Wednesday:
            return "Wednesday"
        case .Thursday:
            return "Thursday"
        case .Friday:
            return "Friday"
        case .Saturday:
            return "Saturday"
        case .Sunday:
            return "Sunday"
        }
    }
}
let day = WeekDays(rawValue: 4)
print(day?.fullName ?? "")
print(day?.shortName ?? "")
/* 2.) Create one enumeration program to return number of days in a month */
enum month {
    case january, febuary, march, april,may, june, july, august, september, october, november, december
    func daysForMonths() -> Int {
        switch self {
        case .january, .march, .may, .july, .august, .october, .december:
            return 31
        case .april, .june, .september, .november:
            return 30
        case .febuary:
            return 28
        }
    }
}
var febDays = month.febuary
print(febDays.daysForMonths())
/* 3.) Write a swift program using enumerations to demonstrate Int enums.*/
enum CarPrice: Int {
    case ferrari = 2_20_00_000
    case mercedes = 55_00_000
    case buggati = 5_00_00_000
    case lamborgani = 3_00_00_000
    case toyata = 10_00_000
}
var buggativeron = CarPrice.buggati.rawValue
print("The Price of Buggati Veron is \(buggativeron) ")
/* 4.) Write a swift program to demonstrate string type enum. */
enum College {
    case name(String)
    case location(String)
    case coursesCount(Int)
    case collegefees(Int)
}
var collegeLocation = College.location("Ahmedabad")
/* 5.)  Write a swift program for enum with raw values. */
enum Direction: String {
    case east = "Sun Rises in the east"
    case west = "Sun sets in west"
    case north = "Tropic of cancer"
    case south = "Tropic of capricon"
}
var headEast = Direction.east.rawValue
print(headEast)
/* 6.) Write a swift program using enumerations to get all cases as an array with use of CaseIterable(Optional) and without use of CaseIterable(Mandatory). */
//With CaseIterable
enum Planets: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto
}
var allPlanets: [Planets] = []
for planet in Planets.allCases {
    allPlanets.append(planet)
}
for planets in allPlanets {
    print(planets)
}
//Without CaseIterable
enum FoodItems {
    case lunch, dinner, snacks
    static var allCases = [lunch, dinner, snacks]
}
for food in FoodItems.allCases {
    print(food)
}
/* 7.) Write a swift program using enumerations for learn and
 demonsrate enum cases with parameters (Enum with associated values). */
enum PersonDetails {
    case name(String)
    case age(Int)
    case gender(String)
    case height(Int)
    case weight(Int)
}
var vaibhavSheth = PersonDetails.age(22)
print("The age of Vaibhav Sheth is \(vaibhavSheth)")
/* 8.) Create an enum with its rawValues of type String and
 show usage of case to print value of case. */
enum AcidPh: String {
    case seven = "The solution is neutral"
    case lessThanSeven = "The solution is acidic"
    case moreThenSeven = "The solution is basic"
}
var strongHcl = AcidPh.lessThanSeven.rawValue
var basicSolution = AcidPh.moreThenSeven.rawValue
print(strongHcl)
print(basicSolutio)
