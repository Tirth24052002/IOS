import UIKit
/* 1.) Create a password validation program.
 If length of password is less than 8 characters,
 it throws “Password too short” exception and if password is empty,
 throw “Empty password” exception. */
enum PassWordError: Error {
    case thePasswordisShort
    case passwordDoesNotMatch
    case passwordIsEmpty
}
func checkPassword(enterPassword: String, confirmPassword: String) throws {
    guard !enterPassword.isEmpty && !confirmPassword.isEmpty else {
        throw PassWordError.passwordIsEmpty
    }
    guard enterPassword.count > 8 && confirmPassword.count > 8 else {
        throw PassWordError.thePasswordisShort
    }
    guard enterPassword == confirmPassword else {
        throw PassWordError.passwordDoesNotMatch
    }
    print("The password is valid")
}
do {
    try checkPassword(enterPassword: "theManIsInTHE" , confirmPassword: "theManIsInTHE" )
} catch PassWordError.passwordIsEmpty {
    print("Empty password")
} catch PassWordError.thePasswordisShort {
    print("Passsword too short")
} catch PassWordError.passwordDoesNotMatch {
    print("Password does not match")
}
/* 2.)Create a program for shopping cart.
 If desired quantity for an item is not available,
 throw exception. */
enum ShoppingError: Error {
    case itemNotAvailable
    case notThatQuantityAvailable
}
struct Item {
    var itemPrice: Int
    var count: Int
}
class ShoppingCart {
    var ItemsAvailable = [
        "Chocolate": Item(itemPrice: 10, count: 22),
        "Chips": Item(itemPrice: 20, count: 33),
        "Ice Cream": Item(itemPrice: 30, count: 60),
        "Banana": Item(itemPrice: 8, count: 66),
        "Apple": Item(itemPrice: 15, count: 44)
    ]
    func itemCheck(itemName: String, itemcount: Int) throws {
        guard let item = ItemsAvailable[itemName] else {
            throw ShoppingError.itemNotAvailable
        }
        guard item.count > itemcount else {
            throw ShoppingError.notThatQuantityAvailable
        }
        var itemRefresh = item
        itemRefresh.count -= 1
        ItemsAvailable[itemName] = itemRefresh
        print("The item is available \(itemName)")
    }
}
let shopItem = ShoppingCart()
do {
    try shopItem.itemCheck(itemName: "Chips", itemcount: 13)
} catch ShoppingError.notThatQuantityAvailable {
    print("The Item is available but is not available is requested quantity")
} catch ShoppingError.itemNotAvailable {
    print("There is no such item")
}

