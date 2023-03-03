
import Foundation


class Rectangle {
    let width: Double
    let height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    // here we are taking class name as parameter so we need conveince
    convenience init(aFourthOf rect: Rectangle) {
        self.init(width: rect.width / 2, height: rect.height / 2)
    }
}



 /**
 In Struct we can call to self.init() from other self.init() but in class not possible.
 this is called delegate init
**/

struct STRUCT{
    var a:Int
    var b:Int
    
    init(_ a:Int, _ b :Int){
        self.a = a;
        self.b = b
    }
    
    init(aa:Int,bb:Int) {
        self.init(aa,bb)
    }
}

