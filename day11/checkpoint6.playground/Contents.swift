//CHECKPOINT 6
import Cocoa

struct Car {
    let model: String
    let numberOfSeats: Int
    private var currentGear: Int
    
    init(model: String, numberOfSeats: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.currentGear = 0
    }
    
    mutating func increaseGear() -> Bool{
        
        if self.currentGear+1 > 10 {
            return false
        } else{
            self.currentGear += 1
            return true
        }
    }
    
    mutating func decreaseGear() -> Bool {
        
        if self.currentGear-1 < 1 {
            return false
        } else {
            self.currentGear -= 1
            print("Here1")
            return true
        }
    }
    
}

var tesla = Car(model: "Model 3", numberOfSeats: 5)
print(tesla)

tesla.increaseGear()
print(tesla)

tesla.increaseGear()
print(tesla)

tesla.decreaseGear()
print(tesla)
