import Cocoa
// ACCEPTING FUNCTIONS AS PARAMETERS

// this function expects an Int and a function that returns an Int in its parameters
// then the function returns an array of Integers
func makeArray(size: Int, using aNumGenerator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = aNumGenerator()
        numbers.append(newNumber)
    }
    return numbers
}

// now we're gonna pass in that integer generator function which returns an Int as a closure
let rolls = makeArray(size: 50) {
    
    Int.random(in: 1...20)
    
}

print(rolls)

// we can also pass in many function/closures to a function


func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void){
    
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
    
}


// then multiple closure input
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second Work")
} third: {
    print("This is the third work")
}
       
