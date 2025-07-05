// CLASSES
import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

//Inheritance

class Employee {
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}

// these classes inherit from Employee
// adding final says that no other child class can inherit from this class
final class Developer: Employee {
    func work(){
        // hours property is inherited from Employee
        print("I'm writing code for \(hours) hours.")
    }
    
    //custom func
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) a day, but other times will spend hours arguing about whether code should be indented usings tabs or spaces")
    }

}

class Manager: Employee {
    
    func work(){
        print("I'm writing code for \(hours) hours.")
    }
}


let gunish = Developer(hours: 8)
let ish = Manager(hours: 10)

gunish.work()
ish.work()


let rohan = Developer(hours: 8)

rohan.printSummary()

// class initalizers

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car:Vehicle {
    let isConvertable: Bool
    
    //initalizer from parent is required in the child
    init(isElectric:Bool, isConvertable: Bool) {
        self.isConvertable = isConvertable
        // then call the parent property with super.init
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertable: false)

//copying classes
// - all copies of a class instance reference the same data
// classes are called reference types

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Gunish"

print("u1",user1.username)
print("u2",user2.username)

// instances of structs do not share the same data


// deinitalizers

// classes can optionally be given a deinitalizer function, opposite of initalizer
// is called when the object is destroyed
// dont use func with deinitalizers
// deinitalizers can never take parameters or return data
// run when the last copy of a class instance is destroye
// never call initalizers directly
// structs dont have deinitalizers

class aUser {
    let id: Int
    
    init(id: Int){
        self.id = id
        print("User \(id): I'm alive!")
        
    }
    // will run only when the instance is deleted from scope
    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [aUser]()

for i in 1...3 {
    let user = aUser(id:i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

users.removeAll()
print("Array is clear!")


// variables inside classes


class anotherUser {
    var name = "Gunish"
}


let user4 = anotherUser()

user4.name = "Manish"

print(user4.name)

// even though the user4 is a constant, the variable inside is a var so it is mutable

class moreUsers {
    var name = "Gunish"
}

//variable instance
var user5 = moreUsers()
user5.name = "Ish"

//thus we can override it, if it was a let we couldn't
user5 = moreUsers()

print(user5.name)

// so there are 4 possible situations
// constant class & constant properties
// constant class with variable properties
// variable class with constant properites
// variable class with variable properties

// each behave slightly differently

// constants structs cannot change its variable properties
 
