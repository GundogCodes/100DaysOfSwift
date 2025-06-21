//TYPE ANNOTATIONS
import Cocoa

let score = 0 // type inference of Int
let Score: Int = 0 // explictly setting type to Int

let Scores: Double = 0 // explictly setting type to Double

var albums: [String] = ["Red","Fearless"] // array of string

var user: [String:String] = ["id":"@SegFaultSharma"] // setting string:string dictionary

var books: Set<String> = Set(["The Bluest Eyes", "Foundation", "Girl, Woman, Other"])

var soda: [String] = ["Coke", "Pepsi", "Sprite"]

// these are all the same, making an empty array of strings
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//or

// var style: UIstyle = UIStyle.light

style = .dark // has type of UIStyle, known by the declaration


let username:String // uninitalized constant done with type annotation
// some logic/code
username = "@segFaultSharma"
// some logic/code
print(username)
