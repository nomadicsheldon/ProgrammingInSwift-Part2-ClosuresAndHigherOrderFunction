//: [Episode 05: Challenge - Closures Syntax](@previous)
//: ## Episode 06: forEach & map
import Foundation

// --------------------------------------
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
// --------------------------------------

//: `forEach` - Loops over a collection and performs an operation
// Normal for loop to access all element
for price in prices {
    print(price)
}

// same we can achieve with forEach
prices.forEach { (price) in
    print(price)
}

// same we can achieve with forEach with short syntax 😎
prices.forEach {
    print($0)
}

var salePriceArray: [Double] = []

// Normal For loop to access and do some event
for price in prices {
    salePriceArray.append(price * 0.9)
}

// same we can achieve by map
let salePriceArrayMapped = prices.map { (price) -> Double in
    price * 0.9
}

// same we can achieve by map with short syntax 😎
let salePriceArrayMappedWithShortSyntax = prices.map { $0 * 0.9 }

// coverting each array element to other type 😱
let priceLabelArrayMapped = prices.map { (price) -> String in
    String(format: "%.2f", price)
}

print(salePriceArray)
print(salePriceArrayMapped)
print(salePriceArrayMappedWithShortSyntax)
print(priceLabelArrayMapped)
//: `map` - Loops over an array, executes closure code, returns a new array




//: [Episode 07: compactMap & flatMap](@next)
