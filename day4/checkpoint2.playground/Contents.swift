//CHECKPOINT 2
import Cocoa

let friends:[String] = ["Gunish", "Ish", "Abhi", "Parth", "Div", "JK", "Yash", "JP", "Rahul", "Rohan","Ronak","Antika","Gunish", "Ish", "Abhi", "Parth", "Div", "JK", "Yash", "JP", "Rahul", "Rohan","Ronak","Antika"]

print("Number of items: ",friends.count)

//var dict:[String:Int] = [String:Int]()
//
//for friend in friends{
//    dict[friend] = 0
//}
//
//print("Number of Unique Items: ",dict.count)


// OR


var uniqueItemSet = Set(friends)

print("Number of Unique Items: ",uniqueItemSet.count)
