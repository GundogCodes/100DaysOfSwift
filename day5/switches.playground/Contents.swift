// SWITCHES
import Cocoa

enum Forecast{
    case sun, rain
}

let weather = Forecast.sun

switch weather {
    
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
}

let place = "Metropolis"

switch place {

case "Gotham":
    print("You're Batman!")

case "Mega-City One":
    print("You're Judge Dredd!")

case "Wakanda":
    print("You're Black Panther!")

default:
    print("Who are you?")
}

let day = 5

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 french hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}
