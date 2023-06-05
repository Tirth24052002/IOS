import UIKit
/*Create an example of demonstrating How to declare optionals in swift?*/
var foodItems: String?
var favCricketer: [String]? = ["MS Dhoni", "Suresh Raina", "Yuvraj Singh", "Virat Kohli"]
var carPrices: Int?
/*What is force unwrapping in optionals show usage in example.  */
var name: String? = "Risk"
var desc: String? = nil
print(name!)
print(desc!)
/*Create one example of show usage of optional binding*/
if let bestCricketer = favCricketer {
    print(bestCricketer[1], terminator: "\n\n")
}
/*Create one example using if-let */
if let favCricketer {
    print(favCricketer, terminator: "\n\n")
}
/*Create one example using guard-let */
func printFavCrickter(_ favCricketer: [String]?) {
    guard let favCricketer else {
        print("i on't have any favourite cricketer")
        return
    }
    print("My favourite cricketer are:")
    for player in favCricketer {
        print(player)
    }
}
printFavCrickter(favCricketer)
print()
/*Create one example using nil colloison operator */
let nameOfUser: String? = nil
let unwrappedName = nameOfUser ?? "Cricketer"
print(unwrappedName)
