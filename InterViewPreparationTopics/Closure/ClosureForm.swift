

import Foundation


class TypesOfClosure{

    
    func arrayOfClosure(){
       var closureArray = [()->()]()

      for i in 0..<5{
        closureArray.append {
           print(i)
       }
     }
        
       print(closureArray[0]())
    }

    
    
    
    func singleReturn(){
        let t = { ()-> String in
            return "ssss";
        }
        print(t())
    }
    
    
    
    func multiReturn(){
        let t = { ()-> (String,String) in
            return ("ssss","aaaa");
        }
        print(t())
    }
    
    
    func ClosureWithArgumentAndReturn(){
        let closure: (String)->String  = { (name) -> String in
            return name;
        }
        print(closure("ssss"))
    
    
    }
    
    
    func shortClosure(){
        let shortClosure:(Int,Int)->Int = {
            return $0+$1;
        }
        
        print(shortClosure(1,2))
    }
    
    
    // Inferred type closure
    // No need of return value
    
    func InferredType(){
        let inferredClosure = {(x:Int,y:Int)->Int in x + y }
        print(inferredClosure(1,99)) // result is 100
    }

}
