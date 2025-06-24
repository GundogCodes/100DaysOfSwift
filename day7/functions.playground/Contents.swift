//FUNCTIONS
import Cocoa


func showWelcome(){
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func printTimesTables(number: Int, end:Int){
    for i in 1...end{
        print("\(i) * \(number) is \(i*number)")
    }
}

printTimesTables(number: 5, end: 20)

func rollDice(sides:Int) -> Int {
    return Int.random(in: 1...sides)
}

//let result = rollDice(sides:6)
//print(result)

let name = "Gunish"

func sameLetters(str1:String, str2:String) -> Bool {
    if str1.sorted() == str2.sorted(){
        return true
    } else {
        return false
    }
}

print(sameLetters(str1: "Gunish", str2: "hsinuG"))

func pythagoras(a:Double, b:Double) -> Double{
    let input = a*a + b*b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)

print(c)

//returning multiple values (with tuples!)

func getUser() -> (firstName:String, lastname:String, id:Int){
    (firstName:"Gunish", lastname:"Sharma", id:2) // simple function dont need return statement
    //("Gunish", "Sharma",2) or this is even simpler and u can reference the indexes like an array but with dot notation!
    // ex. print("Name:", user.0,user.1)
}

let user = getUser()

print(user.firstName, user.lastname, user.id)

// or use destructing

let (firstName, lastName, id) = getUser()

print(firstName, lastName, id)

// customizing parameter names

let lyric = "I see a red door and I want it painted black."

print(lyric.hasPrefix("I see")) // hasPrefix has no parameter name ?



// _ ignores parameter name and you can just put a value without providing a name in the call
func isUppercase(_ string:String) -> Bool{
    string == string.uppercased()
}
let string = "HELLO, WORLD"

let result = isUppercase(string)


// internal function parameter name and external function parameter names

func printTimesTable(for number: Int){ // number is the internal parameter name
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5) // for is the external parameter name
