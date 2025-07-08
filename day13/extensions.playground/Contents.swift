// EXTENSIONS
import Cocoa

var quote = "   Hi my name Goonish and im here to say....    "
print(quote)

//wordy and very long
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)
print(trimmed)


//lets make it shorter and quicker by adding a extension on Strings
extension String {
    
    //returns new string
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    // modifies in place
    mutating func trim(){
        self.trimmed()
    }
    
    //Adding new property to String (remember it must be computed only)
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

// much shorter
let trimmed2 = quote.trimmed()

print(trimmed2)

// but we could've also just done this?

func trim(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}
// and this much shorter? so whats the benefit of exstenions?

// benefits:
// - code completion
// - code organization
// - internal access -> full access to types internal data
// - easier to modify values in place
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

// useful trick to maintain both memberwise intializer AND
// custom initalizers of structs by using exstentions

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int

}

extension Book {
    init(title:String, pageCount: Int){
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}


let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)
