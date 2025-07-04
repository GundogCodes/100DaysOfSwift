// ACCESS CONTROL
import Cocoa

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int){
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool{
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 1000)

let sucess = account.withdraw(amount: 200)

if sucess {
    print("Withdrew money sucessfully")
} else {
    print("Failed to get the money")
}

// in this code so far it is totally possible to run:

// account.funds -= 1000

// but this shouldn't be allowed so we can add private
// in front of the variable to restrict access to it outside
// the structure, this is called access control
// there are other controls:

// fileprivate - doesn't allow access outside the current file
// private -  doesn't allow access from outside the structure
// public - access to all
// private(set) - anyone can read this variable/method but no one can modify  it

