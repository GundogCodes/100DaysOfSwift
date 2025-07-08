// CHECKPOINT 8
import Cocoa

protocol Building {

    var numOfRooms: Int {get}
    var cost: Int {get}
    var agent: String {get set}
    
    func salesSummary()
    
}


struct House: Building {
    var numOfRooms: Int
    var cost: Int
    var agent: String
    
    func salesSummary() {
        print("This House has \(numOfRooms) rooms")
        print("Costs: \(cost)")
        print("Sold by agent: \(agent)")
    }
}

struct Office: Building {
    var numOfRooms: Int
    var cost: Int
    var agent: String
    
    func salesSummary() {
        print("This Office has \(numOfRooms) rooms")
        print("Costs: \(cost)")
        print("Sold by agent: \(agent)")
    }
}


let house = House(numOfRooms: 4, cost: 250_000, agent: "Gunish Sharma")
let office = Office(numOfRooms: 7, cost: 500_000, agent: "Ish Sharma")

house.salesSummary()
office.salesSummary()
