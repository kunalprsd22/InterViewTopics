

import Foundation

protocol MyConstarints {
    var a:Int{get set}
}



class GenricConstarints:MyConstarints{
    var a: Int = 12
    
    init() {
         self.grt(a:GenricConstarints())
    }
    
    
    
    func grt<T:MyConstarints>(a:T){
        print(a.a)
        
    }
    
}
