//STATIC PROPERTIES
import Cocoa

// static properties - are properties of all instances of a struct

struct School {
    static var studentCount = 0
    
    static func add(student: String){
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Gunish")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.gunisharma.com"
}

print(AppData.version)

struct Employee {
    let username: String
    let password: String
    
    // you can setup an example instanication inside the struct to use to test
    static let example = Employee(username: "igiduhbdafh", password: "ssjhuiodhsuiodh")
}


