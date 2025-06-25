//FUNCTION ERROR HANDLING
import Cocoa

enum PasswordError: Error{ // Password error has type of Error
    case short, obvious // 2 cases
}

func checkPassword(_ password:String) throws -> String{ // throws symbolizes that this function can throw errors
    if password.count < 5 {throw PasswordError.short} //
    if password == "12345" {throw PasswordError.obvious} // if any of these are true, an error is thrown and function exits
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short{
    print("Please use a longer password.")
} catch PasswordError.obvious{
    print("Password is too obvious!")
} catch { // catch them all!
    print("There was an error.")
}
