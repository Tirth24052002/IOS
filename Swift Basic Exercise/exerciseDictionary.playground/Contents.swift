import UIKit
/*1) You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz". You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string*/
var code = [

            "a" : "b",

            "b" : "c",
            
            "c" : "d",

            "d" : "e",

            "e" : "f",

            "f" : "g",

            "g" : "h",

            "h" : "i",

            "i" : "j",

            "j" : "k",

            "k" : "l",

            "l" : "m",

            "m" : "n",

            "n" : "o",

            "o" : "p",

            "p" : "q",

            "q" : "r",

            "r" : "s",

            "s" : "t",

            "t" : "u",

            "u" : "v",

            "v" : "w",

            "w" : "x",

            "x" : "y",

            "y" : "z",

            "z" : "a"

]
var encodedMessage = "uijt nfttbhf jt ibse up sfbe"
var messageToDecode: [String : String] = [:]
for (a, z) in code {
    messageToDecode[z] = a
}
for char in encodedMessage {
    if let decodedChar = messageToDecode[String(char)] {
        print(decodedChar, terminator: "")
    } else {
        print(char, terminator: "")
    }
}
print("\n")
/*2) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary*/
var people: [[String:String]] = [
    [
    "firstName": "Calvin",
    "lastName": "Newton"
    ],
    [
    "firstName": "Garry",
    "lastName": "Mckenzie"
    ],
    [
    "firstName": "Leah",
    "lastName": "Rivera"
    ],
    [
    "firstName": "Sonja",
    "lastName": "Moreno"
    ],
    [
    "firstName": "Noel",
    "lastName": "Bowen"
    ]
    ]
var firstNames: [String] = []
for names in people {
    if let personFirstName = names["firstName"] {
        firstNames.append(personFirstName)
    }
}
print(firstNames, terminator: "\n")
/*3) You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space*/
var fullNames: [String] = []
for person in people {
    if let firstName = person["firstName"], let lastName = person["lastName"] {
        fullNames.append(firstName + " " + lastName)
    }
}
print(fullNames, terminator: "\n")
/*4) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.*/
var peopleTwo: [[String : Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 12
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

var personWithLowestScore: [String : Any] = peopleTwo.first ?? [:]
for person in peopleTwo {
    guard let currentPersonScore = person["score"] as? Int,
          let lowestScore = personWithLowestScore["score"] as? Int,
          currentPersonScore < lowestScore else {
        continue
    }
    personWithLowestScore = person
}
if let firstName = personWithLowestScore["firstName"] as? String,
   let lastName = personWithLowestScore["lastName"] as? String {
    print(firstName + " " + lastName)
}
print()
/*5) You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Print the leaderboard in the following format:*/
peopleTwo = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

func compareScore(person1: [String : Any], person2: [String : Any]) -> Bool {
    guard let person1Score = person1["score"] as? Int,
          let person2Score = person2["score"] as? Int else {
        return false
    }
    return person1Score > person2Score
}

let people2SortedByScore =  peopleTwo.sorted(by: compareScore)
for (idx, person) in people2SortedByScore.enumerated() {
    guard let firstName = person["firstName"] as? String,
       let lastName = person["lastName"] as? String,
       let score = person["score"] as? Int else {
        break
    }
    print("\(idx + 1). \(firstName) \(lastName) - \(score)")
}
print()
/*6) You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.*/
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var fequancyOfNumber: [Int : Int] = [:]
for number in numbers {
    fequancyOfNumber[number] = (fequancyOfNumber[number] ?? 0) + 1
}
let sortedNumbersDict = fequancyOfNumber.sorted(by: {(pair1, pair2) -> Bool in
    return pair1.key < pair2.key
})
sortedNumbersDict.forEach({(num, freq) in print(num, freq)})
print()
