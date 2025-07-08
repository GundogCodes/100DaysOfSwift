// CREATINGS AND USINGS PROTOCOLS EXTENSIONS
import Cocoa

// extension Array {
//    var isNotEmpty: Bool {
//        isEmpty == false
//    }
//}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

// hard to read
if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}
// we can fix with the extension above

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
// what if we want to have this same extension on not only
// arrays but sets and dictionaries, we can do it
// with the collections protocols, which arrays, dicts and
// sets conform to

// this leads to a techique called
// protocol orientated programming (POP)
// in which all conforming types gain that
// exstention


protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello(){
        print("Hi, I'm \(name) ")
    }
}

struct Employee: Person {
    let name: String
}


let taylor = Employee(name: "Taylor Swift")

taylor.sayHello()
