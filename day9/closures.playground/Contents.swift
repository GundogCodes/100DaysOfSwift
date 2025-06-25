// CLOSURES
import Cocoa


func greetUser(){
    print("Hi there!")
}

greetUser()

// Making a copy of the function greetUser
var greetCopy: () -> Void = greetUser // the type of this function is Void
greetCopy()

//basically making a function
let sayHello = {
    print("Hello there!")
}

sayHello()

//making a function with parameters

let sayHi = {(name:String) -> String in // in is a marker to end the paramenters and return type
    "Hi \(name)!"
}


let team = ["Gunish", "Ish", "Parth", "Abhi", "Rohan", "Somesh"]
let sortedTeam = team.sorted()
print(sortedTeam)


func captainFirstSorted(name1:String, name2:String) -> Bool {
    if name1 == "Somesh"{
        return true
    } else if name2 == "Somesh"{
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)
//same as
let captainFirstTeam = team.sorted(by: {(name1:String, name2:String) -> Bool in
    
    if name1 == "Somesh"{
        return true
    } else if name2 == "Somesh"{
        return false
    }
    return name1 < name2
    
})

