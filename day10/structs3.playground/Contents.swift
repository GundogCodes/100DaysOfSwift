//PROPERTY OBSERVERS
import Cocoa


// property observers run whenever a property's value changes
// there is 2 types: didSet and willSet
// did set will run after the property value changed
// will set runs before the property value changes

struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)") // there exists an oldValue variable inside  didSet thast lets you reference the previous value
        }
    }
}
var game = Game()

game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was:  \(oldValue)")
        }
    }
}

var app = App()


app.contacts.append("Gunish")
app.contacts.append("Ish")
app.contacts.append("Abhi")
