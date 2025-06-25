//DEFAULT VALUES FOR PARAMETERS
import Cocoa
                                    // 12 is the default value for end
func printTimesTable(for number:Int, end:Int = 12){
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5, end: 20)
printTimesTable(for: 8)

var characters = ["Lana", "Pam", "Ray", "Sterling"]

print(characters.count)
characters.removeAll(keepingCapacity: true) // removes all items but keeps capacity of array
