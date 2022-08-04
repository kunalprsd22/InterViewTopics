

import Foundation



class use:NSObject{
    // create a closures
    var d = {
        print("value changed")
    }
    func useKVOusingStruct(){
        var t = KVOUse(changeClosure: d, a: 12)
        t.a = 13  // after setting the value the closure will call ("value changed")
    }
}



struct KVOUse{
    
    var changeClosure:(()->())?  // declaration
    
    var a:Int{
        didSet{
            print("ssss");
            self.changeClosure?() // calling
        }
    }
    
    
}
