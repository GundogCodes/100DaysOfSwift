// UNWRAPPING OPTIONALS WITH NIL COALESCING
import Cocoa

let captains = [
    "Enterprise":"Picard",
    "Voyager":"Janeway",
    "Defiant":"Sisko"
]

let new = captains["Serenity"] ?? "N/A"

print(captains)
print(new)

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]

let favourite = tvShows.randomElement() ?? "None"
// so this will give you back a random element or if the array is empty
// we'll get back None

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Gunish", author: nil)

let author = book.author ?? "Anonymous"
print(author)

let input = ""
let number = Int(input) ?? 0
print(number)
