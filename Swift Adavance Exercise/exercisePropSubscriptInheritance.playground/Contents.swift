import UIKit
/*1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.
    Output: for example, your class Demo has one property of string type then
    you can be able to set it within a class.
    If I try set it outside of class it must give an error.  */
class Demo {
    private (set) var changename: String
    var name: String {
        return changename
    }
    init(name: String) {
        self.changename = name
    }
    func nameChnage(newName: String) {
        self.changename = newName
    }
}
var bhavesh = Demo(name: "Bhavesh")
bhavesh.nameChnage(newName: "Bhavin")
print(bhavesh.name)
//bhavesh.name = "newName" // This line will throw an error
/* 2) Create a swift program to demonstrate usage of computed properties using getter and setter.  */
class ConvertWeight {
    var kg: Double = 0.0
    var grams: Double {
        get {
            return kg * 1000
        }
        set(newWeight) {
            kg = newWeight / 1000
        }
    }
}
var kgToGram = ConvertWeight()
kgToGram.kg = 123
print(kgToGram.grams)
var gramToKg = ConvertWeight()
gramToKg.grams = 23000
print(gramToKg.kg)
/* 3) Create a swift program to show usage of stored properties.  */
struct PlayerDetails {
    var playerName: String
    var playerAge: Int
    var playerHeight: Double
    var playerWeight: Double
}
var footBallPlayer = PlayerDetails(playerName: "Wanye Rooney", playerAge: 33, playerHeight: 5.10, playerWeight: 88.22)
/* 4)  Create a swift program which has private properties
    which cannot directly be accessed.
    Means we cannot directly read or write it.   */
class StudentDetails {
    private var id: Int?
    var name: String
    var age: Int
    var department: String
    init(name: String, age: Int, department: String) {
        self.name = name
        self.age = age
        self.department = department
    }
}
var sudentDetails = StudentDetails(name: "Mohit", age: 22, department: "CE")
//sudentDetails.id = 1 // This property is private so it cannot be accessed directely
/* 5) Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types.   */
class bankDetails {
    var name: String
    var id: Int
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}
var customerOne = bankDetails(name: "Vicky", id: 1)
var customerTwo = bankDetails(name: "Vikram", id: 2)
var banCustomer: [bankDetails] = []
banCustomer.append(customerOne)
banCustomer.append(customerTwo)
for customer in banCustomer {
    print(customer.name, customer.id)
}
/* 6)  Create one example of usage of willSet and didSet.  */
class clock {
    var hours: Int = 0 {
        willSet(newvalue) {
            print("The hours are \(hours) the new value is \(newvalue)")
        }
        didSet {
                print("The hours old value was \(oldValue)")
            }
        }
    }
var wokingHours = clock()
wokingHours.hours = 8
wokingHours.hours = 2
wokingHours.hours = 3
/* 7) Create one lazy stored property in a class and show usage of it.  */
class MathOperation {
    var numberOne: Int
    var numberTwo: Int
    init(numberOne: Int, numberTwo: Int) {
        self.numberOne = numberOne
        self.numberTwo = numberTwo
    }
    lazy var add: Int = numberOne + numberTwo
}
var addNum = MathOperation(numberOne: 123, numberTwo: 321)
print(addNum.add)
/* 8)  Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company.
    And demonstrate the usage of inheritance.  */
class Person {
    var name: String
    var age: Int
    var occupation: String?
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
class Student: Person {
    var college: String
    var department: String
    init(name: String, age: Int, college: String, department: String ) {
        self.department = department
        self.college = college
        super.init(name: name, age: age)
        print("The Student name is \(name) is studying in \(college) in \(department) department")
    }
}
class Employee: Person {
    var company: String
    var salary: Int
    init(name: String, age: Int, company: String, salary: Int) {
        self.company = company
        self.salary = salary
        super.init(name: name, age: age)
        print("The Employee name is \(name) is working in \(company) and has \(salary) salary")
    }
}
var personStudent = Student(name: "Jin Jam", age: 19, college: "Haward", department: "Pscyology")
var personEmployee = Employee(name: "Conner Gun", age: 34, company: "Amazon", salary: 5_00_000)
/*The usage of inheritance is that parent class's all properties can be inherited in clind class and the new properties of clild class can also be added*/
/* 9) Create one structure to show usage of mutating function in swift.  */
struct Cricket {
    var score = 0
    mutating func hitSix() {
        score += 6
    }
    mutating func hitFour() {
        score += 4
    }
    mutating func takeTwo() {
        score += 2
    }
    mutating func takeOne() {
        score += 1
    }
}
var score = Cricket()
score.hitSix()
score.hitFour()
score.takeOne()
score.takeTwo()
print(score)
/* 10) Create one class inheritance demo to show usage of method overriding.*/
var sum = 0
class Math {
    var numOne: Int
    var numTwo: Int
    init(numOne: Int, numTwo: Int) {
        self.numOne = numOne
        self.numTwo = numTwo
    }
    func addOperation() {
        sum = numOne + numTwo
    }
}
class ChangeAddToSub: Math {
    override func addOperation() {
        sum = numOne - numTwo
        print(sum)
    }
}
var addAndSub = ChangeAddToSub(numOne: 12, numTwo: 2)
addAndSub.addOperation()
/* 11)  Create one swift class to show usage of type methods.  */
class Vehicle  {
    var  wheels = 4
    class func carName(name: String) {
        print("The car name is \(name)")
    }
    static func bikeName(name: String) {
        print("The bike name is \(name)")
    }
}
class HeavyVehicle: Vehicle {
    //    override static func bikeName(name: String) { // Static function cannot be overrided
    //        print("The heavy vheicle name is \(name)")
    //    }
    class var someName: String {
        return "String"
    }
    override class func carName(name: String) {

        print("The heavy vehicle name is \(someName)")
    }
}
class LightVehice: HeavyVehicle {
    override class var someName: String {
        return "Mutated" + super.someName
    }
}
HeavyVehicle.carName(name: "Truck") // Type method can can directely be accessed without making object or instance for the class
Vehicle.carName(name: "Buggati")
Vehicle.bikeName(name: "Ninja")
LightVehice.someName
HeavyVehicle.someName
/* 12)  Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)  */
class Animal {
    var animalName: String
    init(animalName: String) {
        self.animalName = animalName
    }
    class func animalExistance(animalCount: Int) {
        if animalCount < 1000 {
            print("This type of animal species is rare")
        } else {
            print("There is the huge number of this species")
        }
    }
    static func animalType(enterType: String) {
        print("The entered animal is of \(enterType) type")
    }
}
class EndangeredAnimal: Animal {
    override class func animalExistance(animalCount: Int){
        if animalCount < 500 {
            print("This species is rare and must be preserved")
        } else {
            print("This species has huge number ")
        }
    }
//    override static func animalType(enterType: String) {  // The Static function of parent class cannnot be overrided
//        print("The entered animal is of \(enterType) type")
//    }
}
Animal(animalName: "Camel")
Animal.animalType(enterType: "Wild")
Animal.animalExistance(animalCount: 10000)
EndangeredAnimal.animalExistance(animalCount: 2222)
/* 13) Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.*/
class WeekDayNames {
    let weekDays = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    subscript(no: Int) -> String? {
        guard(1...7).contains(no) else {
            return "Invalid Number"
        }
        return weekDays[no - 1]
    }
}
var mon  = WeekDayNames()[21]
print(mon ?? "No Value")
/* 14)  Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position. */
class Months {
    var name: String
    init(name:String) {
        self.name = name
    }
    subscript(getno: Int) -> Character {
        var montName: [Character] = Array(name)
        if getno >= 0 && getno < montName.count {
            print(montName[getno])
        }
        return montName[getno]
    }
}
var febuary = Months(name: "Febuary")
febuary[1]
/*15)  Create one swift subscript program which takes range as input and returns the string between the ranges. */
extension String {
    subscript(enterRange: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: enterRange.lowerBound)
        let end = index(startIndex, offsetBy: enterRange.upperBound)
        return String(self[start..<end])
    }
}
let str = "Hello World!"
let subString = str[5..<10]
// 16) I have one integer array and create one function which takes range as input and returns all elements between the range.
func getRange(array: [Int], range: Range<Int>) -> [Int] {
    var result = [Int]()
    for items in array {
        if range.contains(items) {
            result.append(items)
        }
    }
    print(result)
    return result
}
let numArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let getRange = 5..<10
let elementsInRange = getRange(array: numArray, range: getRange)
/*17)  I have one key value pair array.
 Create one function using subscript which takes key as input
 and returns it’s value.*/
//Output: let array = [[1: “Hello”], [2: “Hi..”]]
//Now call function subscript(at: 1) it should print "Hello”
typealias keyAndValue = [Int: String]
class KeyValueArray {
    var array: [keyAndValue] = []
    subscript(index: Int) -> String? {
        guard let element = array[index].first else {
            return nil
        }
        return element.value
    }
    func adding(_ element: keyAndValue) {
        array.append(element)
    }

}
let enterArray = KeyValueArray()
enterArray.adding([1: "Hello"])
enterArray.adding([1: "Hi..."])
if let getValue = enterArray[1] {
    print(getValue)
} else {
    print("Ivalid number")
}
/* 18)  Create one array of type Person and create one subscript function
    which takes person name as input and returns person info like
    name, age, birthdate etc.  */
struct PersonOne {
    var name: String
    var age: Int
    var birthdate: String
    init(name: String, age: Int, birthdate: String) {
        self.name = name
        self.age = age
        self.birthdate = birthdate
    }
}
class PersonArray {
    var array: [PersonOne] = []
    subscript(name: String) -> PersonOne? {
        for person in array {
            if person.name == name {
                return person
            }
        }
        return nil
    }
    func append(_ person: PersonOne) {
        array.append(person)
    }
}
let perDetails = PersonArray()
perDetails.append(PersonOne(name: "Aman", age: 22, birthdate: "24/2/99"))
perDetails.append(PersonOne(name: "Birbal", age: 55, birthdate: "22/12/01"))
print(perDetails.array[0])
/*19) Create one base class of type Song and create subclasses of music types (Hip-Hop, classical) and show usage of inheritance. // Here Music class have property singer,composer  */
class Song {
    var title: String
    var duration: Int
    init(title: String, duration: Int) {
        self.title = title
        self.duration = duration
    }
}
class HipHop: Song {
    var singer: String
    var lyrist: String
    init(title: String, duration: Int, singer: String, lycrist: String) {
        self.lyrist = lycrist
        self.singer = singer
        super.init(title: title, duration: duration)
        print("Title: \(title), Duration: \(duration), Singer: \(singer), Lycrist: \(lycrist)")
    }
}
class Classical: Song {
    var conductor: String
    var composer: String
    init(title: String, duration: Int, conductor: String, composer: String) {
        self.composer = composer
        self.conductor = conductor
        super.init(title: title, duration: duration)
        print("Title: \(title), Duration: \(duration), Conductor: \(conductor), Composer: \(composer)")
    }
}
var newSongs = HipHop(title: "Without Me", duration: 4, singer: "Eminen", lycrist: "Dr.Drake")
var oldSongs = Classical(title: "Slim Shady", duration: 6, conductor: "Eminem", composer: "Tupac")
/* 20) Create a swift class with properties which can be
    read-write outside of class. */
class ReadAndWrite {
    var myProperty: String
    init(myProperty: String) {
        self.myProperty = myProperty
    }
}
let myObject = ReadAndWrite(myProperty: "Hello World!")
print(myObject.myProperty)
