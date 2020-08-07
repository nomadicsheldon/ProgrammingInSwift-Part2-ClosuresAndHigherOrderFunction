//: [Episode 03: Challenge - Closures](@previous)
//: ## Episode 04: Closure Syntax
// --------------------------------------------
typealias Operate = (Int, Int) -> Int
// --------------------------------------------

// biggest form and clear definition closure
let longClosure = { (a: Int, b: Int) -> Int in
    a * b
}

// no paramter type closure
let noParameterType: Operate = { (a, b) -> Int in
    a * b
}

// no return type closure
let noReturnType: Operate = { (a, b) in
    a * b
}

// shortest form $0 for first element and $1 for second element
let shortClosure: Operate = { $0 * $1 }

longClosure(4, 2)
noParameterType(4, 2)
noReturnType(4, 2)
shortClosure(4, 2)

// Void closure returns nothing
let VoidClosure: () -> Void = { () -> Void in
    print("🥶")
}

// Void closure returns nothing, no need to use "Void in" - This is recommanded is nothing it returning
// Button is implemented like this
let VoidClosureClean: () -> Void = {
    print("🥶🥶")
}

// Void is kind of "()" so we can replace it like this -
let VoidClosureWithBrackets: () -> () = {
    print("🥶🥶🥶")
}

// It will not accept - VOid will only come in return Type
/*
 let VoidClosureWithBrackets: Void -> Void = {
     print("🥶🥶🥶")
 }
 */

VoidClosure()
VoidClosureClean()
VoidClosureWithBrackets()

// --------------------------------------------
func printResult(_ a: Int, _ b: Int, _ operate: Operate) {
    print(operate(a, b))
}

func printResult2(operate: Operate, a: Int, b: Int) {
    print(operate(a, b))
}
// --------------------------------------------

// Inline closure with shorter syntax
printResult(10, 3, { $0 * $1 + 10 })

// Trailing closure syntax
/*
 printResult(10, 3) { (<#Int#>, <#Int#>) -> Int in
     <#code#>
 }
 */


printResult(10, 3) { $0 * $1 + 10 }

// No thing - just checking
printResult2(operate: {$0 * $1 + 10}, a: 10, b: 3)

//: [Episode 05: Challenge - Closures Syntax](@next)
