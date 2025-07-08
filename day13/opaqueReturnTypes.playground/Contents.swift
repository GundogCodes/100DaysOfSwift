// OPAQUE RETURN TYPES
import Cocoa


//                        this is the opaque return type
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
    // or we can change this now to
    // Double.random(in: 1...6)
}

//                      this is the opaque return type
func getRandomBool() -> some Equatable {
    Bool.random()
}

// Both Int and Bool conform to an equitable protocol which says that
// these things can be compared for equality, this allows us to use ==
// in our conditionals


print(getRandomNumber() == getRandomNumber())


