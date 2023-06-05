import UIKit
//1. Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
var companyName = "Simform"
print(companyName.prefix(2))
/*2. Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2. */
var stringOne = "Si"
var stringTwo = stringOne
assert(stringTwo.count >= 2, "Aleast 2 Characters")
stringTwo.removeFirst()
stringTwo.removeLast()
print(stringTwo)
/*3. Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1. */
var stringThree = "Swift"
var stringFour = "Examples"
assert(stringThree.count >= 1, "Aleast 1 Characters")
assert(stringFour.count >= 1, "Atleast contain 1 character")
stringThree.removeFirst()
stringFour.removeFirst()
var stringFive = stringThree + stringFour
print(stringFive)
/*4. Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2. */
var stringToCheck = "Swift"
assert(stringToCheck.count >= 2, "String must be of at least 2 characters")
var firstCharacters = stringToCheck.prefix(2)
var lastCharacters = stringToCheck.dropFirst(2)
stringToCheck = String(firstCharacters + lastCharacters)
print(stringToCheck)
//5. Write a Swift program to test if a given string starts with "Sw".
var usingString = "Swift"
print("String start with Sw is", usingString.hasPrefix("Sw"))
//6. Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
var stringMade = "Simform Solutions", n = 3
assert(n > 0 && stringMade.count >= n, "String must be of at least n characters")
print(stringMade.prefix(n) + stringMade.suffix(n))
//7. Try all string methods
var allmethods = "allStringMethodForOperations"
print(allmethods.count)
print(strlen(allmethods))
