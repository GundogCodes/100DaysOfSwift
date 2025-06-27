// TRAILING CLOSURES & SHORTHAND SYNTAX
import Cocoa

// In the case of customizing the sort method,
// the method MUST receive a function/closure that
// takes 2 string parameters and returns a Bool
// since, the sort function already specifies this
// in order to modify the method we can reduce the
// syntax we give it

let team = ["Gunish", "Ish", "Rohan", "Parth", "Div", "Somesh", "Rahul"]

// thus all we need to write is the parameter labels
let sorted = team.sorted(by: { a,b in
    if a == "Somesh" {
        return true
    } else if b == "Somesh"{
        return false
    }
    return a < b
})

// we can go futher, when one function accepts another function
// as its parameter, swift gives us a special syntax to handle this
// this is called trailing closure syntaz

let sorted2 = team.sorted { a,b in
    if a == "Somesh" {
        return true
    } else if b == "Somesh"{
        return false
    }
    return a < b
}

print(sorted2)

// we can go even further by not even creating parameter variables
// kinda like in bash you can write $0 $1 to reference the
// positions of an array

let sorted3 = team.sorted {
    if $0 == "Somesh" {
        return true
    } else if $1 == "Somesh"{
        return false
    }
    
    return $0 < $1
}

// reverse sort

let reverseSort = team.sorted { $0 > $1}

//remember in single line returns if the return is valid, you don't
// need to write the return keyword

// Arrays have a filter function in which it returns a new array
// of all the elements that pass the conditions for our filter

let rOnly = team.filter { $0.hasPrefix("R") }

print(rOnly)

// similarly there is the map function
// this will transform each item in the array
// map is sick remember
let uppercasedTeam = team.map { $0.uppercased() }

print(uppercasedTeam)



