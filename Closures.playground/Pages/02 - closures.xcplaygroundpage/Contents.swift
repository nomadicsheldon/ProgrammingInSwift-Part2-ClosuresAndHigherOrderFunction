//: ## Episode 02: Closures

// --------------------------------------
typealias Operate = (Int, Int) -> Int

// Functions are special type of closures
func add(a: Int, b: Int) -> Int {
  a + b
}

func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
  let result = operate(a, b)
  print(result)
}
// --------------------------------------

var operate = add // It will work like closure

add(a: 7, b: 3)
operate(7, 3)

/*
 // Creating closure type defined - can we sorten it 🧐🧐🧐
 var addClosure: (Int, Int) -> Int = { (a: Int, b: Int) -> Int in
     return a + b
 }
 */

/*
 // Use Typealias - can we sorten it 🧐🧐
 var addClosure: Operate = { (a: Int, b: Int) -> Int in
     return a + b
 }
 */

/*
 // return not needed for one line in body - 🧐
 var addClosure: Operate = { (a: Int, b: Int) -> Int in
     a + b
 }
 */

// Type definition is not need - 🤩
let addClosure = { (a: Int, b: Int) -> Int in
    a + b
}

addClosure(7,3)

// you can't use argument in closures
/*
 var addClosure = { (num1 a: Int,num2 b: Int) -> Int in
     a + b
 }
 */

// you can't use default value in closures
/*
 var addClosure = { (a: Int, b: Int = 6) -> Int
     a + b
 }
 */

// it will accept any type which has format like (Int, Int) -> Int
printResult(add, 4, 5)
// it will accept any type which has format like (Int, Int) -> Int
printResult(operate, 4, 5)
// it will accept any type which has format like (Int, Int) -> Int
printResult(addClosure, 4, 5)
// it will accept any type which has format like (Int, Int) -> Int
printResult(+, 4, 5)
// it will accept any type which has format like (Int, Int) -> Int
// closure have extra feature - write inline 😳
printResult({(a: Int, b: Int) -> Int in
    a * b + 100
    },
    4, 5)

/*
  ---------------------------------------------------------------------
 |   Closures                                           Function       |
 |       👎                 Names?                           👍        |
 |       👎            Argument Labels?                      👍        |
 |       👎       Default Parameters Values?                 👍        |
 |       👍              Write Inline?                       👎        |
  ---------------------------------------------------------------------
 closure have different syntax
 { "Parameter list" -> "return Type" "in(keyword in)"
 "body"
 }
 
 function hav different syntax
 func"keyword" "name"("argument(optional)"  "parameterlist") -> "return Type" {
 "body"
 }
 */

//: [Episode 03: Challenge - Closures](@next)
