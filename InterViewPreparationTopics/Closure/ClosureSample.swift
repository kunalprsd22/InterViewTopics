
import Foundation


class sampleModelInUpdate{
    var x:Int;
    var closureCallUpdate = {};
    
    init(x:Int) {
        self.x = x;
    }
    
    func LoadClass(){
        closureCallUpdate = { [weak self] in
            guard let _self = self else { return }
            _self.x = 15;
        }
    }
    
}


class sampleModelOutUpdate{
    var x:Int{
        didSet{
            self.closureCallUpdate()
        }
    }
    var closureCallUpdate = {}
    
    init(x:Int) {
        self.x = x;
    }
    
    
}

