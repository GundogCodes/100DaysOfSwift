// CHECKPOINT 9
import Cocoa

func randomNum(_ arr:[Int]?) -> Int {
    if let arr = arr {
        let randomNumber:Int? = arr.randomElement()
        return randomNumber ?? 0
    } else {
        let randomNumber:Int = Int.random(in: 1...100)
        return randomNumber
    }
}

let aArr = [Int]()?

print(randomNum(aArr))
