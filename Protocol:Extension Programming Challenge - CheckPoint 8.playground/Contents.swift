import Foundation

// My Solution

protocol Building {
    var numberOfRooms: Int { get }
    var costOfTheBuilding: Int { get set }
    var nameOfTheAgent: String { get set }
    
    func printSummary()
}

extension Building {
    func printSummary() {
        print("This building is well equiped with \(numberOfRooms) rooms, comes with a price tag of \(costOfTheBuilding) and is being sold by respected \(nameOfTheAgent)")
    }
}

struct House: Building {
    var numberOfRooms: Int
    var costOfTheBuilding: Int
    var nameOfTheAgent: String
}

struct Office: Building {
    var numberOfRooms: Int
    var costOfTheBuilding: Int
    var nameOfTheAgent: String
    
    func printSummary() {
        print("🏢 Premium Commercial Office Space! \(numberOfRooms) suites available. Asking price: \(costOfTheBuilding). Broker: \(nameOfTheAgent)")
    }

}

var house = House(numberOfRooms: 5, costOfTheBuilding: 5_000_000, nameOfTheAgent: "Mr. James Rutherford")
let office = Office(numberOfRooms: 20, costOfTheBuilding: 40_000_000, nameOfTheAgent: "Mrs. Jill Valentine")

house.printSummary()
house.costOfTheBuilding = 10_000_000

house.printSummary()
office.printSummary()
