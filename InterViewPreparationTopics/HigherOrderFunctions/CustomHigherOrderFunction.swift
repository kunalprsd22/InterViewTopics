

import Foundation

extension Array {
    
    func doubleMap<T>(_ value:(Element) ->T) -> [T]{
        var d = [T]()
        for data in self{
            d.append(value(data))
        }
        return d
    }
    
    func findEven<T>(_ data:(Element)->Bool)->[T]{
           var demo = [T]()
           
           for val in self{
               if data(val){
                   demo.append(val as! T)
               }
           }
           return demo
       }
    
    
    //let res: [Int] =  test.findEven {$0%2 == 0}
    
    
}


