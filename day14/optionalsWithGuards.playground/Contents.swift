// OPTIONALS WITH GUARDS
import Cocoa

func printSquare(of number: Int?) {
    // will run if number does NOT have a value inside
    // opposite behaviour of if let
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}
printSquare(of: nil)
printSquare(of: 78932)
