
import Foundation


@dynamicMemberLookup
struct Person1 {
    subscript(dynamicMember member: String) -> String {
        let properties = ["name": "Taylor Swift", "city": "Nashville"]
        return properties[member, default: ""]
    }
}

class DynamicCheck{
    
    func test(){
       let taylor = Person1()
       print(taylor.name)
       print(taylor.city)
       print(taylor.favoriteIceCream)
    }
    
}
