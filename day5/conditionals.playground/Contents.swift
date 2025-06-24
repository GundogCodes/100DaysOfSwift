//CONDITIONALS
import Cocoa

let score = 85
let percentage  = 85
let age = 18
let speed = 88

if score > 80 {
    print("Great Job!")
}

if speed >= 88 {
    print("Where we're going, we dont need road.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName{
    print("Its \(ourName) vs \(friendName)1")
}

if ourName > friendName {
    print("Its \(friendName) vs \(ourName)2")
}

var numbers = [1,2,3]

numbers.append(4)

if numbers.count > 3{
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

if country == "Australia"{
    print("G'day!")
}

let name = "Gunish"

if name != "Anonymous"{
    print("Welcome, \(name)")
}

var username = "segFaultSharma"

if username.isEmpty {
    username = "Anonymous"
}

print("Welcome, \(username)")

//else if & else

if age >= 18{
    print("You can vote in the next election.")
} else if age == 250 && name == "Gunish"{
    print("Sorry, you're dead.")
}else{
    print("Sorry, you're too young to vote.")
}

let userAge = 14
let hasParentalConsent = true
if age >= 18 || hasParentalConsent{
    print("You can buy the game!")
}

enum transportOption {
    case airplane, helicopter, bike, car, scooter
}

let transport = transportOption.airplane

if transport == .airplane || transport == .helicopter{
    print("Let's fly!")
} else if transport == .bike{
    print("I hope there's a bike path...")
} else if transport == .car{
    print("Time to get stuckk in traffic")
} else{
    print("I'm going to hire a scooter now!")
}
