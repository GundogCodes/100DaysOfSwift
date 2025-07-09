// OPTIONALS
import Cocoa

// dictionary
let opposites = ["Mario":"Wario", "Luigi":"Waluigi"]

let peachOpposite = opposites["Peach"]
//print(peachOpposite) // nil <- doesnt exist in dict

// optionals let us handle potentially missing data
// 2 primary ways we do it
//1.
// if opposite mario exists in dict then place it in marioOpposite
// this marioOpposite var only exists in the scope of the body
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
} else{
    print("Opposite doesn't exist")
}

//2.
// var username is an optional string it has no (nil) value right now
var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number:Int) -> Int{
    number * number
}

var number:Int? = nil
//print(square(number: number))

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
} else {
    print("No value for number")
}

number = 10

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
} else {
    print("No value for number")
}
