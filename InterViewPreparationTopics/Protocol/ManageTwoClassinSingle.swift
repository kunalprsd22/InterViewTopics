

import Foundation

protocol OurProtocol {
    var a:Int {get set}
}




class XYZ:OurProtocol{
    var a:Int = 0
}

class BCD:OurProtocol{
    var a:Int = 1
}







class MyTest{
    var obj:OurProtocol
     
    
    init(d:OurProtocol) {
        obj = d;
    }
    
    func getValue(){
        print(obj.a)
    }
}
