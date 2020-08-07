//: [Episode 08: Challenge - Closures & Collections](@previous)
//: ## Episode 09: filter, reduce, & sort

// --------------------------------------
let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------
//: filter

// --------------------------------------
let dwarvesAfterM = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
  var afterM: [String] = []
  for dwarf in dwarves where dwarf > "M" {
    afterM.append(dwarf)
  }
  return afterM
}
// --------------------------------------


// Using filter for above implementation 😎
let dwarvesAfterMWith_filter = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
    dwarves.filter { (dwarf) -> Bool in
        dwarf > "M"
    }
}

// Short syntax 🤩
let dwarvesAfterMWith_filter_WithSortSyntax = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
    dwarves.filter {
        $0 > "M"
    }
}


//: reduce

// --------------------------------------
let ozmaGrades = [60, 96, 87, 42]

func getPassStatus(for grades: [Int], lowestPass: Int) -> Bool {
  var totalGrade = 0
  for grade in grades {
    totalGrade += grade
  }

  return (totalGrade / grades.count) > lowestPass
}
// --------------------------------------

// return the result combined by elements

/*
 
 func reduce<Result>(_ initialResult: Result, _ nextPartialResult: (Result, Int) throws -> Result) rethrows -> Result
 
 */

func getPassStatusWith_reduce(for grades: [Int], lowestPass: Int) -> Bool {
    let totalGrade = grades.reduce(0) { (total, grade) -> Int in
        total + grade
    }
  return (totalGrade / grades.count) > lowestPass
}

// Not recommended - bad code 🤬
func getPassStatusWith_reduce_withShortSyntax(for grades: [Int], lowestPass: Int) -> Bool {
    let totalGrade = grades.reduce(0) { $0 + $1 }
  return (totalGrade / grades.count) > lowestPass
}

// We can give + in second position, anyways its also a type of closure 😎
// for knowledge - but for teammates it will be bit confusing
func getPassStatusWith_reduce_withExistingSymbol(for grades: [Int], lowestPass: Int) -> Bool {
    let totalGrade = grades.reduce(0, +)
  return (totalGrade / grades.count) > lowestPass
}


getPassStatus(for: ozmaGrades, lowestPass: 60)
getPassStatusWith_reduce(for: ozmaGrades, lowestPass: 60)
getPassStatusWith_reduce_withShortSyntax(for: ozmaGrades, lowestPass: 60)
getPassStatusWith_reduce_withExistingSymbol(for: ozmaGrades, lowestPass: 60)
//: reduce(into:)
// --------------------------------------
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]
// --------------------------------------

// returns the combined result for each index- check documentation, apple has clear documentation 🥳
let stockSumsOfKeyAndValue = stock.reduce(into: []) { (result, currentIdx) in
    result.append(currentIdx.key * Double(currentIdx.value))
}

print(stockSumsOfKeyAndValue)



//: Sorting Methods

// --------------------------------------
var names = ["Zeus", "Poseidon", "Ares", "Demeter"]
// --------------------------------------

//: sort() & sort(by:) - Sorts in place (mutates the original)

names.sort()

names.sort { (a, b) -> Bool in
    a > b
}

names.sort(by: { $0 > $1 })

names.sort(by: >)


//: sorted() & sorted(by:) - Returns a new collection that is sorted
let longToShortNames = names.sorted() {
    $0.count > $1.count
}

names
longToShortNames
//: [Episode 10: Challenge: filter, reduce, & sort](@next)
