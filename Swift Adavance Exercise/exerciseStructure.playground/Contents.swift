import UIKit
/* 1.) Create one structure of type Work,
 which have some properties like work location,
 work hours and one string array of project names.
 And create a function inside structure which returns all project names for the person. */
struct Work {
    var workLocation: String
    var workHours: Int
    var projectNames: [String]
    func allNames() -> [String] {
        return projectNames
    }
}
var peoples = Work(workLocation: "Ahmedabad", workHours: 10, projectNames: ["Chat app", "Vehical Tracking", "Car maintainance App", "IT company"])
print(peoples.allNames())
/* 2.) Create a structure example which demonstrates use of initializer in structures. */
struct MathOperations {
    var numOne: Int
    var numTwo: Int
    init(numOne: Int = 0 , numTwo: Int = 0) {
        self.numOne = numOne
        self.numTwo = numTwo
    }
    func add() {
        print("The addition of \(numOne) and \(numTwo) is \(numOne + numTwo)")
    }
    func sub() {
        print("The substration of \(numOne) and \(numTwo) is \(numOne - numTwo)")
    }
    func mul() {
        print("The multiplication of \(numOne) and \(numTwo) is \(numOne * numTwo)")
    }
    func div() {
        print("The divison of \(numOne) and \(numTwo) is \(numOne / numTwo)")
    }
}
var mathOp = MathOperations(numOne: 321, numTwo: 123)
mathOp.add()
mathOp.sub()
mathOp.mul()
mathOp.div()
/* 3.) Create a structure program which can be initialized with parameters
 and it also should be able to initialized without parameters. */
struct CollegeName {
    var name: String?
    var departmentNo: Int?
    var fees: Int?
    init() {
        print("The class has been initilized")
    }
    init(name: String?, departmentNo: Int?, fees: Int?) {
        self.name = name
        self.departmentNo = departmentNo
        self.fees = fees
        print("The college name is \(name ?? "Not Entered") has \(departmentNo ?? 0) departments and it's fees is \(fees ?? 0)")
    }
}
var college = CollegeName()
var collegeDetails = CollegeName(name: "IIT Gandhinagar", departmentNo: 10, fees: 80_000)
/* 4.) Create one structure which have initializer which takes array
    of int as input returns  two arrays one of all even numbers and
    another is all odd numbers.
    Input: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
    Output: even numbers are: [6, 8, 10, 8, 12]
    Odd numbers are: [1, 3, 5, 9, 7]  */
var evenArray: [Int] = []
var oddArray: [Int] = []
struct OddEven {
    var inputArray: [Int]
    init(inputArray: [Int]) {
        self.inputArray = inputArray
    }
    mutating func odd() -> Any {
        for i in inputArray {
            if i % 2 != 0 {
                oddArray.append(i)
            } else {
                evenArray.append(i)
            }
        }
        return "Even numbers are: \(evenArray) \nOdd numbers are: \(oddArray)"
    }
}
var checkNos = OddEven(inputArray: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
print(checkNos.odd())
/*5.) Create one swift structure program for person that contains
 basic details like name, age, gender.
 Then create one array of person with all details.
 Print all details of that array.
 // Consider two persons array for Joe and Harry.
 But in your code Its size can be vary.
 Output be like: Name: Joe, Gender: Male, Age: 27
 Name: Harry, Gender: Male, Age: 21  */
var peopleDetails: [Person] = []
struct Person {
    var name: String
    var age: Int
    var gender: String
    init(name: String, gender: String, age: Int) {
        self.name = name
        self.age = age
        self.gender = gender
    }
}
var perOne = Person(name: "Joe", gender: "Male", age: 22)
var pertwo = Person(name: "Harry", gender: "Male", age: 21)
peopleDetails.append(perOne)
peopleDetails.append(pertwo)
for twoPeoples in peopleDetails {
    print("Name: \(twoPeoples.name), Gender: \(twoPeoples.gender), Age: \(twoPeoples.age)")
}
/*6 Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason
    for that output. */
//First getting output with class
print("The output with class:")
class Example {
    var a: String?
    init(a: String? = nil){
        self.a = a
    }
}

var example1 = Example()
example1.a = "Hello"
var example2 = example1
example2.a = "Hi"
print(example1.a ?? "Not available")
print(example2.a ?? "Not available")
//Doing the same with Stucture
print("The output with structure:")
struct ExampleOne {
    var a: String?
    init(a: String? = nil){
        self.a = a
    }
}
var example3 = ExampleOne()
example3.a = "Hello"
var example4 = example1
example4.a = "Hi"
print(example3.a ?? "Not available")
print(example4.a ?? "Not available")
/* The reason between difference in output between class and structure are as follows:
 1. class is the reference type whereas structure is value type
 2. When we store two instance using class the memory is assigned for both of them
 3. Whereas in structure each instance has it's seperate block of memory */
/* 7.) Try to figure out basic difference between class and structures and give a demo for same. */
class PersonName {
    var name: String
    init?(name: String) { // Class required initializer unlike structure for which initializer is optional
        self.name = name
    print("The person name is \(name)")
    }
    deinit { // Deintializer is only required in class and it cannot be used in struture
        print("The class is deinitialized")
    }
}
class PersonAge: PersonName { /* Inheritance is only possible in class as it is type of protocol.Inheritance is not possible in structure as it is non - protocol type */
    var age: Int
    init?(name: String, age: Int) {
        self.age = age
        super.init(name: name)
    }
}
//
var johnHenry = PersonAge(name: "John Henry", age: 22)
johnHenry = nil
struct CarValue {
    var carName: String
    var price: Int
    init(carName: String, price: Int) {
        self.carName = carName
        self.price = price
    }
    mutating func defaultNames() { // Mutating function can only be created in structure
        carName = "Undefined"
        price = 0
    }
}
/* The main differene between class and structure is class is reference type and structure is value type*/
