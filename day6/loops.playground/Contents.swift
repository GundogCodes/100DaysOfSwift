// LOOPS
import Cocoa

//FOR LOOPS
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

// inclusive range
outerLoop: for i in 1...12 {
    print("The \(i) times table")
    innerLoop: for j in 1...12 {
        print("  \(j) x \(i) is \(j*i)")
    }
    print()
}

// exclusive range
for i in 1..<5 {
    print("\(i)")
}

var lyric = "Haters gonna"
for _ in 1...5{
    lyric += " hate"
}

print(lyric)

// WHILE LOOPS

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

// getting random Ints or doubles ex:
var id = Int.random(in: 0...100)
var amount = Double.random(in: 0...100)

var roll = 0

while roll != 20{
    roll = Int.random(in: 1...20)
    print("I rolled a ", roll)
}

// BREAKS & CONTINUES

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false{
        continue // skips element if it doesnt end in .jpg
    } else {
        print(filename)
    }
}

for filename in filenames {
    if filename.hasSuffix(".txt"){
        print(filename)
        break // breaks loop when .txt file found
    }
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2){
        multiples.append(i)
    }
    if multiples.count == 10{
        break
    }
}

print(multiples)

