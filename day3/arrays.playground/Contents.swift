//ARRAYS
import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [1,3,6,7,8]
var temps = [25.3,38.2,13.5]

var times = Array<Int>() // empty array of ints
var albums = Array<String>()

// easier way to write empty string:
var scores = [Int]()
scores.append(10)
scores.append(29)
scores.append(13)
scores.append(43)
scores.append(53)
print("original scores: ",scores)

print("Len of original scores: ",scores.count)

scores.remove(at: 0)

print(scores.count)

scores.removeAll()

print(scores)
print(scores.count)

print(scores.contains(0))
print("Original beatles: ", beatles)
beatles = beatles.sorted()
print("beatles sorted: ",beatles)

beatles.reverse()
print("beatles reversed",beatles)

