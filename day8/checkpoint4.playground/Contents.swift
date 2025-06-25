//CHECKPOINT 4
import Cocoa

// accept 1 intger from 1-10_000
// cant use sqrt()
// if int < 1 or > 10_000 throw out of bound error
// only integer sqrt
// if no sqrt throw no root error

enum rootErrors:Error {
    case outOfBounds, noRoot
}

let int:Int = 64

func squareRoot(_ num:Int) throws -> Int{
    if num > 10_000 || num < 1 {throw rootErrors.outOfBounds}
    var rootFound = false
    for i in 1..<num {
        if i * i == num{
            rootFound = true
            return i
        }
    }
    
    if rootFound == false{
        throw rootErrors.noRoot
    }
}


do {
    var intRoot = try squareRoot(int)
    print(intRoot)
} catch rootErrors.outOfBounds{
    print("Please enter a number between 1 - 10,000.")
} catch rootErrors.noRoot {
    print("No square root exists for this number.")
}
