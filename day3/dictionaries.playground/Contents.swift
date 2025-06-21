//DICTIONARIES

import Cocoa

var avengersGC = [
    "Gunish":"Iron Man",
    "Rohan":"Captain America",
    "Ish":"Hulk",
    "Parth":"Thor",
    "Abhi":"Black Widow",
    "Div":"Hawkeye",
    "Somesh":"Colson"
]

print(avengersGC)
print(avengersGC["Gunish",default: "Unknown"])

avengersGC["JK"] = "Nick Fury"
avengersGC.removeValue(forKey: "Somesh")
print(avengersGC.count)
avengersGC.removeAll()
print(avengersGC)



