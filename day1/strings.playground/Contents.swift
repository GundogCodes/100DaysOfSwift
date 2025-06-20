//STRINGS
import Cocoa

var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

let character = "Daphne"

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

let managerName = "Michael Scott"

let dogBreed = "Samoyed"

let meaningOfLife = "How many roads must a man walk down"

let movie = """
A day in
the life of an
Apple engineer
"""
let myName = "My name is \"Gunish\"😊"

print(myName)
print(myName.count)
print(myName.uppercased())


// Joining strings together

let firstName = "Gunish"
let lastName = "Sharma"
var age = 26
let fullName = firstName + " " + lastName + " is awesome!"
//This is cumbersome for swift

print(fullName)

//use string interpolation with \()
let message = "Hello, my name is \(firstName) \(lastName) and I'm \(age) years old."

print(message)

let number = 11

let missionMessage = "Apollo " + String(number) + " has landed on the moon."

print("5 x 5 is \(5*5)")
