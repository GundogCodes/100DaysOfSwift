// OPTIONAL CHAINING
import Cocoa

let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

// example
// we have an optional instance of a Book struct
// the book might have an author or might be anonymnous
// if it has an author, attempt to read the first letter
// if the first letter is there, uppercase it

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil

let author = book?.author?.first?.uppercased() ?? "A"
print(author)
