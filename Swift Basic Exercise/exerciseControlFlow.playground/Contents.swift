import UIKit
// 1) Print the powers of 2 that are less than or equal to N.
var N = 100
var powers = 2
while powers <= N {
    print(powers)
    powers *= 2
}
//2) Given an integer N draw a square of N x N asterisks. Look at the examples.
N = 3
for _ in 1...N {
    for _ in 1...N {
        print("*", terminator: "")
    }
    print()
}
print()
//3) Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
N = 4
for i in 1...N {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}
print()
//4)Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.
N = 4
for i in 1...N {
    if i != N {
        for _ in 1...(N-i) {
            print(" ", terminator: "")
        }
    }
    for _ in 1...(2*i-1) {
        print("*", terminator: "")
    }
    print()
}
print()
//5)You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).
let number = 17
let sqrtNumber = Int(sqrt(Double(number)))
if number < 2 {
    print("NotPrime")
}
else {
    var isPrime = true
    for i in stride(from: 2, to: sqrtNumber, by: 1) {
        if number % i == 0 {
            print("Not Prime \(number) is divisible by other number other than 1 and \(number)")
            isPrime = false
            break
        }
    }
    if isPrime {
        print("Prime \(number) is only divisible by 1 and \(number)")
    }
}
