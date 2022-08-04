
import Foundation

class Test{
    
    let jsonString = """
    {
    "first_name": "John",
    "last_name": "Doe",
    "country": "United Kingdom"
    }
    """
    
    
    let jsonArryString = """
    [
    {
        "first_name": "Arthur",
        "last_name": "Dent"
    }, {
        "first_name": "Zaphod",
        "last_name": "Beeblebrox"
    }, {
        "first_name": "Marvin",
        "last_name": "The Paranoid Android"
    }
  ]
"""
    
    
    let jsonOneLevelString = """
    {
    "id":"15",
    "users":
    [
        {
            "first_name": "Arthur",
            "last_name": "Dent"
        }, {
            "first_name": "Zaphod",
            "last_name": "Beeblebrox"
        }, {
            "first_name": "Marvin",
            "last_name": "The Paranoid Android"
        }
    ]
    }
"""
    
    
    
    func start(){
        // decodable
        
        
        //        let jsonData = jsonString.data(using: .utf8)! // Json Data convert
        //        let user = try! JSONDecoder().decode(User.self, from: jsonData) // Decode Json data to swift object
        
        
        //        let jsonData = jsonArryString.data(using: .utf8)! // Json Data convert
        //        let users = try! JSONDecoder().decode([ArrayUser].self, from: jsonData) // Decode Json data to swift object
        //
        //        for user in users {
        //            print(user.first_name)
        //        }
        
        
        
        //        let jsonData = jsonOneLevelString.data(using: .utf8)!
        //        let response = try! JSONDecoder().decode(Response.self, from: jsonData)
        //
        //        for user in response.users {
        //            print(user.first_name)
        //        }
        //        print(response.id)
        
        
        // Encodable
        
        
        
        
        var user = User(firstName:"Bob",lastName:"and Alice",country:"Cryptoland")
        let jsonData = try! JSONEncoder().encode(user)
        let jsonString = String(data: jsonData, encoding: .utf8)!
        print(jsonString)
        
    }
    
    
    
    
}



//class User: Codable {
//    var first_name:String
//    var last_name:String
//    var country:String
//}


struct User:Codable{
    var firstName:String? // Handle the nil data
    var lastName:String?
    var country:String?
    
    enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case country
    }
}


struct ArrayUser: Codable {
    var first_name:String
    var last_name:String
}




struct Response: Codable{
    var id:String
    struct User: Codable {
        var first_name:String
        var last_name:String
    }
    var users:[User]
}



