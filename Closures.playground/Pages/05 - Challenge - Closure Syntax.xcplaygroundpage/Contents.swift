//: [Episode 04: Closure Syntax](@previous)
//: ## Episode 05: Challenge - Closures Syntax
/*:
 ## Challenge 1
 Rewrite the long closure with the following syntax:
  * No parameter types
  * No parameter or return types
  * No parameter names
 Try passing the same values into each closure. Their printed results should match!
*/

// --------------------------------------
let copyLines = { (offense: String, repeatCount: Int) -> Void in
  print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
// --------------------------------------

// TODO: Write solution here
typealias makeoffenseString = (String, Int) -> Void

let copyLinesWithNoParameterTypes: makeoffenseString = { offense, repeatCount -> Void in
    print( String(repeating: "I must not \(offense).", count: repeatCount) )
}

let copyLinesWithNoParameterAndReturnTypes: makeoffenseString = { offense, repeatCount in
    print( String(repeating: "I must not \(offense).", count: repeatCount) )
}
let copyLinesWithNoParamtersName: makeoffenseString = {
    print( String(repeating: "I must not \($0).", count: $1) )
}

copyLines("Shout", 10)
print()
copyLinesWithNoParameterTypes("Shout", 10)
print()
copyLinesWithNoParameterAndReturnTypes("Shout", 10)
print()
copyLinesWithNoParamtersName("Shout", 10)

//: [Episode 06: forEach & map](@next)
