// ENUMS
import Cocoa

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// or

enum Weekdays {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = .thursday // allowed

// error: day = Weekday.january

if(day == .friday){
    print("Yes")
} else {
    print("poongi")
}
