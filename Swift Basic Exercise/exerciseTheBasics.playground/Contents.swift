import UIKit
/*1. Breakfast
 
 You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).
 Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out.
 If you can cook bacon and eggs print you can cook bacon and eggs.
 If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order. */
var baconAge = 3 // the bacon is 6 days old
var eggsAge = 2 // eggs are 12 days old
if baconAge <= 21 && eggsAge <= 7 {
    print("you can cook bacon and eggs.")
} else {
    if baconAge > 21 {
        print("throw out bacon.")
    }
    if eggsAge > 7 {
        print(" throw out eggs.")
    }
}
/*2. Leap Year You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.
 The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case. */
let yearToCheck = 2000
if yearToCheck % 4 == 0 {
    if yearToCheck % 100 == 0 && yearToCheck % 400 == 0 {
        print("It's a leap year!")
    } else {
        print("Not a leap year!")
    }
} else {
    print("Not a leap year!")
}
/*3. Hitpoints
 
 You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100.
  100 represents full health
  0 represents dead.
 You want to add regenerating health to the game using the following rules:

 HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …)

 When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …)

 If the character has 0 HP then he doesn’t regenerate life (he’s dead)

 Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.  */
var hp = 60
if hp < 20 && hp > 0 {
    hp = 20
} else if hp % 10 != 0 {
    hp = hp / 10
    hp = hp + 1
    hp = hp * 10
}
print(hp)
/*4. Above average
 You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.
 You are also given your grade in the class stored in a variable yourGrade of type Double.
 Print above average if your grade is greater than the class average or below average” otherwise.
  Note: the average of the class includes your grade.
*/
func marksAboveAverage(grade1: Double,grade2: Double, grade3: Double, yourGrade myGrade: Double) {
        assert(grade1 >= 0 && grade2 >= 0 && grade3 >= 0 && myGrade >= 0, "Grades is not valid")
    let classAverage = (grade1 + grade2 + grade3 + myGrade) / 4
    myGrade > classAverage ? print("Above average") : print("Average or below average")
}
marksAboveAverage(grade1: 7.0, grade2: 9.0, grade3: 5.0, yourGrade: 8.0)
/*5. Tipping
 
 You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
 You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
 Print the total cost of the meal.

*/
func foodTotalCoast(mealCost: Double, tip: Int) -> Double {
    assert(mealCost >= 0, "The maeal cost is not valid!")
    assert(tip >= 0, "Percentage of tip is invalid")
    return (1 + Double(tip)/100) * mealCost
}
var mealCost:Double = 3.5
var tip:Int = 20
print(foodTotalCoast(mealCost: mealCost, tip: tip))

