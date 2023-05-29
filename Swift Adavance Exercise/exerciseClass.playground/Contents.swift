import UIKit
/* Exercise Class */
/* 1.)Create a swift program to demonstrate swift class.
 Which has two variables inside class body.
 Access (Set its values and get its value.)
 these variables by creating one instance of class. */
class PersonNameAndAge {
    var personName: String
    var personAge: Int
    init(personName: String, personAge: Int) {
        self.personName = personName
        self.personAge = personAge
    }
}
let johnWick = PersonNameAndAge(personName: "John Wick", personAge: 44)
print(johnWick.personName, johnWick.personAge)
/* 2.) Create a swift program to demonstrate usage of swift
 class for usage of multiple initializers.
 Create one initializer with two parameters your name a
 nd college and another initializer with your name and department.
 You can be able to access these properties using instance of class. */
class Student {
    var name: String?
    var college: String?
    var department: String?
    init() {
        print("The is the empty intializer")
    }
    init(name: String, college: String) {
        self.name = name
        self.college = college
        print("The \(name) is studing in \(college) college")
    }
    init(name: String, depatment: String) {
        self.name = name
        self.department = depatment
        print("The \(name)'s department is \(depatment)")
    }
}
var emptyIntializer = Student()
var nameAndCollege = Student(name: "Tirth", college: "Sal")
var nameAndDepartment = Student(name: "Tirth", depatment: "Information Technology")
/* 3.) Create a swift class without initializers and access
 (write, read)its properties using instance of class. */
class MathOperation {
    var noOne = 0
    var noTwo = 0
    func add() {
        print("The addition of two number is \(noOne + noTwo)")
    }
}
var addOperation = MathOperation()
addOperation.noOne = 123
addOperation.noTwo = 321
addOperation.add()
/* 4.) Create a swift class which is having code to return
 square of given number and access this code using class instance. */
class SquareOfNo {
    var enterNo: Int
    init(enterNo: Int) {
        self.enterNo = enterNo
    }
    func sqr() {
        print("The square of \(enterNo) is \(enterNo * enterNo)")
    }
}
var numberSeven = SquareOfNo(enterNo: 7)
numberSeven.sqr()
/* 5.) Create a swift class example to show use of swift inheritance.
 Your base class has some property access this property.
 In two different child classes and show its usage using
 the instances of both child classes. */
class College {
    let collegeName: String
    var fields: Int
    init(collegeName: String, fields: Int) {
        self.collegeName = collegeName
        self.fields = fields
    }
    func detail() {
        print("The college name is \(collegeName) and has \(fields) different fields")
    }
}
class Department: College {
    var courses: String
    init(courses: String,collegeName: String, fields: Int) {
        self.courses = courses
        super.init(collegeName: collegeName, fields: fields)
    }
    func departmanetDetails() {
        print("The are \(courses) courses, the field numbers is \(fields) and the college name is \(collegeName) ")
    }
}
class StudentDet: Department {
    var studentName: String
    init(courses: String, collegeName: String, fields: Int, studentName: String) {
        self.studentName = studentName
        super.init(courses: courses, collegeName: collegeName, fields: fields)
    }
    func studDet() {
        print("The name of student is \(studentName)'s department name is \(courses) and total course is \(fields) and his college name is \(collegeName)")
    }
}
var StudetDetails = StudentDet(courses: "IT", collegeName: "SAL", fields: 1, studentName: "Tirth")
StudetDetails.studDet()
var departmentDetails = Department(courses: "Many", collegeName: "SAL", fields: 10)
departmentDetails.departmanetDetails()
/* 6.) Create a swift class example to show use of swift base class
 which have some implementation inside any method.
 Now demonstrate usage of overriding that method implementation. */
class Math {
    var numOne: Int
    var numTwo: Int
    init(numOne: Int, numTwo: Int) {
        self.numOne = numOne
        self.numTwo = numTwo
    }
    func performAddition() -> Int {
        return numOne + numTwo
    }
}
class ChangeAddToSub: Math {
    override func performAddition() -> Int {
        return numOne - numTwo
    }
}
var perAdd = Math(numOne: 321, numTwo: 123)
print(perAdd.performAddition())
var perSub = ChangeAddToSub(numOne: 321, numTwo: 123)
print(perSub.performAddition())
/* 7.) Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
    example:  let instance = Example(value: 5)
    let result = instance.doPower(power: 3)
    then it should return 5's 3 power (125) */
class MatPow {
    var no: Int
    init(no: Int) {
        self.no = no
    }
    func powerOfNo(pow: Int) -> Int {
        var resPow = 1
        for _ in 1...pow {
            resPow *= no
        }
        return resPow
    }
}
var mathPower = MatPow(no: 5)
print(mathPower.powerOfNo(pow: 3))
/* 8.)Create a swift class example which has a parent class for vehicles,
 and child classes for two different vehicles e.g. (bike & car).
 You need to use common properties and method in the parent class
 and inside child class, there will be some different property
 which is not common. */
class Vehicle {
    var wheelsCount: Int
    var vehicleName: String
    init(wheelsCount: Int, vehicleName: String) {
        self.vehicleName = vehicleName
        self.wheelsCount = wheelsCount
    }
}
class Bike: Vehicle {
    var bikeName: String
    init(wheelsCount: Int, vehicleName: String, bikeName: String) {
        self.bikeName = bikeName
        super.init(wheelsCount: wheelsCount, vehicleName: vehicleName)
        print("The \(vehicleName) name is \(bikeName) and have \(wheelsCount) wheels")
    }
}
class Car: Vehicle {
    var carName: String
    init(wheelsCount: Int, vehicleName: String, carName: String) {
        self.carName = carName
        super.init(wheelsCount: wheelsCount, vehicleName: vehicleName)
        print("The \(vehicleName) name is \(carName) and have \(wheelsCount) wheels")
    }
}
let carFerrari = Car(wheelsCount: 4, vehicleName: "Car", carName: "Ferrrari")
let bikeNinja = Bike(wheelsCount: 2, vehicleName: "Bike", bikeName: "Ninja")
/*9.) Create a person swift class with person name initializer
    and create one function to greet that person.
    Example: let person1 = Person(name: Joe)
    Person1.greet() // This should print “Hello Joe” */
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    func greet() {
        print("Hello \(name)")
    }
}
/* 10.) Create a swift class with some property.
    And then set its value using initializer of class,
    then perform below actions.
    let example1 = Example()
    Example1.a = “Hello”
    let example2 = example1
    example2.a = “Hi”
    print(example1.a)
    print(example2.a)
 // Consider ‘a’ as string property of example class.
 --> Check these two print outputs and try to find out the reason for that output. */
class Example {
    var a: String?
    init(a: String? = "sefu"){
        self.a = a
    }
}

let example1 = Example()
example1.a = "Hello"
let example2 = example1
example2.a = "Hi"
print(example1.a ?? "Not available")
print(example2.a ?? "Not available")
