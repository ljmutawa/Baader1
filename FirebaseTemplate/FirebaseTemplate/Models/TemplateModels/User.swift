
import Foundation
import FirebaseFirestore
import class Firebase.User
typealias FirebaseUser = Firebase.User


struct User: Codable {
    var fullName: String = ""
    var phoneNumber: String = ""
    var email: String = ""
    var birthday: String = ""
    var birthmonth: String = ""
    var birthyear: String = ""
    var gender: String = ""
    
    func birthdate() -> String{
        return "\(birthday) / \(birthmonth) / \(birthyear)"
    }
}


struct SignInCredentials: Encodable {
    var email: String
    var password: String
}
