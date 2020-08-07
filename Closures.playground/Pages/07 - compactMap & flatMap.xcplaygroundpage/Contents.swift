//: [Episode 06: forEach & map](@previous)
//: ## Episode 07: compactMap & flatMap

//: `compactMap`

// --------------------------------------
let userInput = ["meow!", "15", "37.5", "seven"]
// --------------------------------------

var arrayForValidInput: [Int] = []

// Normal for loop to get all Int from userInput.
// Is there better way to do it? - Yes 🤩
for input in userInput {
    guard let input = Int(input) else { continue }
    arrayForValidInput.append(input)
}

// we can use compactMap to achieve above implementation
// compact map will ignore the element which is not satisfying the condition 🥳

let arrayForValidInputUsing_compactMap = userInput.compactMap { element in
    Int(element)
}

print(arrayForValidInput)
print(arrayForValidInputUsing_compactMap)


//: `flatMap`

// --------------------------------------
let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------

// flatMap has a power to covert 2D array to single dimensional array 🦹🏻‍♂️
let arrayOfDwarfArraysWith_flatMap = arrayOfDwarfArrays.flatMap { (elements) -> [String] in
    elements
}


// We can add our conditions to filter for what result we want.

let arrayOfDwarfArraysWith_flatMap_With_where = arrayOfDwarfArrays.flatMap { (elements) -> [String] in
    var result: [String] = []
    for element in elements where element > "M" {
        result.append(element)
    }
    return result
}


print(arrayOfDwarfArraysWith_flatMap)
print(arrayOfDwarfArraysWith_flatMap_With_where)

//: [Episode 08: Challenge - Closures & Collections](@next)
