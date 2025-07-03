// COMPUTE PROPERTY VAlUES DYNAMICALLY

import Cocoa

struct Employee {
    let name: String
    var vacation: Int
}

var archer = Employee(name: "Sterling Archer", vacation: 14)

archer.vacation -= 5
print(archer.vacation)

archer.vacation -= 3
print(archer.vacation)

// this way we have lost the inital value for the vacation
// we can solve this with computed values for the property

struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationsTaken = 0
    
    // dynamically computed each time it is called, not stored!
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationsTaken
        }
        set {                                    // automatically provided by swift in set
            vacationAllocated = vacationsTaken + newValue
        }
    }
}
var emp = Employee2(name: "Gunish Sharma")

emp.vacationsTaken += 4
print(emp.vacationRemaining)

emp.vacationsTaken += 4
print(emp.vacationRemaining)
// we can read vacationRemaining and it is calculated each time
// but we can't set (write) the value yet
// we can do that with get and set blocks u can see above

var emp2 = Employee2(name: "Ish Sharma")

emp2.vacationsTaken += 4
emp2.vacationRemaining = 5
print("here: ",emp2.vacationAllocated)
