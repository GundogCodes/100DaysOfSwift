//SETS
import Cocoa
var emptySet = Set<String>()
var actors = Set(["Denzel Washington", "Nicholas Cage", "Tom Cruise"])
actors.insert( "Tom Hanks" )
print(actors)
print(actors.sorted())
print(actors.contains("Tom Cruise"))

