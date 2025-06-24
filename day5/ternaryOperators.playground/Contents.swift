//TERNARY OPERATORS
import Cocoa


let age = 18

let canVote = age >= 18 ? "Yes" : "No"

let hour = 23

print(hour < 12 ? "It's before noon" : "Its after noon")

let names = ["Gunish", "Ish", "Parth"]

let crewCount = names.isEmpty ? "No one" : "\(names.count) people"


enum Theme {
    case light, dark
}

let theme = Theme.dark



let background = theme == .dark ? "black" : "white"
//                      W           T           F

print(background)
