// CUSTOM INITALIZERS
import Cocoa


struct Player {
    let name: String
    let number: Int
}

// memberwise initalizer - accepts each property it was defined
let player = Player(name: "Gunish S", number: 2)



struct Player2 {
    let name:String
    let number: Int
    
    init(name: String){ // so this is what is required in the instanciation code
        // if you use init, you MUST provide a value for EACH property
        self.name = name
        self.number = Int.random(in: 1...99)
    }
    
}

let player2 = Player2(name: "Ish S")
print(player2.number)
