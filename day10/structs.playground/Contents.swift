// STRUCTS
import Cocoa

struct Album {
    // properties
    let title: String
    let artist: String
    let year:Int
    
    //methods
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}

// instance
let em = Album(title: "The Marshall Mathers LP", artist: "Eminem", year: 2000)
let em2 = Album(title: "Recovery", artist: "Eminem", year: 2010)

em.printSummary()
print(em2.title)
em2.printSummary()


struct Employee {
    let name: String
    var vacationRemaining: Int
    // or default value of property
    // var vacationRemaining = 14
    
    mutating func takeVacation(days: Int){
        if vacationRemaining > days{
            self.vacationRemaining -= days
            print("I'm going on vacation yallll!")
        } else{
            print("Oops! There aren't enough days remaining!")
        }
    }
}

            // initalizer for the sturct
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)

archer.takeVacation(days: 5)
print(archer.vacationRemaining)
