

import Foundation



class KeyValueObserver{
    
var model:CounterModel!
var observers = [NSKeyValueObservation]()
    
    init() {
        model = CounterModel(value: 1)
        self.observeModel()
        model.value = 13;
        
        // KVC is used to set the value in NSobject class
        model.setValue(12, forKey: "value")
    }
    
    
    
    // Note : KVO observer must be store in somewhere other wise it will not work. here is " var observers = [NSKeyValueObservation]() "
    
    // KVO observer initialisation which return must be store somewhere .
    func observeModel() {
        self.observers = [
            model.observe(\CounterModel.value, options: [.initial,.new]) { (model, change) in
                print(model.value)
            }
            
            
        ]
    }
    
    
}




class  CounterModel : NSObject {
    @objc dynamic var value = 0
    
    init(value:Int) {
        self.value = value
        super.init()
    }
}




