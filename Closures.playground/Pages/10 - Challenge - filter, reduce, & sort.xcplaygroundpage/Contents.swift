//: [Episode 09: filter, reduce, & sort](@previous)
//: ## Episode 10: Challenge: filter, reduce, & sort
/*:
 ## Challenge Time 😎
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
*/

let names = ["Himanshu", "Shivanshu", "Aman", "Ayush"]

//names.reduce("") { (result, name) -> String in
//    result + name
//}

//names.reduce("") { $0 + $1 }

let allNames = names.reduce("", +)

print(allNames)



/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
*/

names.filter { (name) -> Bool in
    name.count > 4
}.reduce("", +)



/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
*/

let namesAndAges = ["Himanshu": 17, "Shivanshu": 29, "Aman": 26, "Ayush": 16]

let under18 = namesAndAges.filter { (result) -> Bool in
    result.value < 18
}

print(under18)


/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
*/

let namesAfter_filter_reduce = namesAndAges.filter { (result) -> Bool in
    result.value >= 18
}.reduce(into: []) { (result, currentIdx) in
    result.append(currentIdx.key)
}

let namesAfter_filter_map = namesAndAges.filter { (result) -> Bool in
    result.value >= 18
}.map { result in
    result.key
}

print(namesAfter_filter_reduce)
print(namesAfter_filter_map)

//: ## End
