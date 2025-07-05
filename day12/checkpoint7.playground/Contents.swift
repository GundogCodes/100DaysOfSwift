// CHECKPOINT 7
import Cocoa

class Animal {
    let numOfLegs: Int
    
    init(numOfLegs: Int) {
        self.numOfLegs = numOfLegs
    }
}

class Dog:Animal {
    
    var name:String
    
    init(numOfLegs:Int, name:String){
        self.name = name
        super.init(numOfLegs: numOfLegs)
    }
    func speak(){
        print("Bark Bark!")
    }
    
}


class Corgi:Dog{
    
    override func speak(){
        print("Yip Yip!")
    }
}

class Poodle:Dog {
    
    override func speak() {
        print("Ruff Ruff!")
    }
}

class Cat:Animal {
    let isTame: Bool
    
    init(numOfLegs:Int, isTame: Bool) {
        self.isTame = isTame
        super.init(numOfLegs:4)
        
    }
    func speak(){
        print("Meow Meow!")
    }
}

class Persian:Cat {
    
    override func speak() {
        print("zesty Meow Meow!")
    }
}

class Lion:Cat {
    override func speak() {
        print("Roar Roar!")
    }
}

let dog = Dog(numOfLegs: 4, name: "Bosco")
let corgi = Corgi(numOfLegs: 4, name: "Yash")
let poodle = Poodle(numOfLegs: 4, name: "Rohan")
let cat = Cat(numOfLegs: 4, isTame: true)
let persianCat = Persian(numOfLegs: 4, isTame: true)
let lion = Lion(numOfLegs: 4,isTame: false)

dog.speak()
corgi.speak()
poodle.speak()
cat.speak()
persianCat.speak()
lion.speak()
