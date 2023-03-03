
struct StructData{
    var b:Int
}

class ClassData{
    var b:Int = 2;
}




class InoutUse {
    
    init() {
        
        /////////////////////////////////////////////////////////////////////////
        var b = StructData(b: 2) // it will send only on Var not in let
        checkStructureInout(a: &b) 
        print(b.b) // 13 will print
        /////////////////////////////////////////////////////////////////////////
        
        // For Class
        let data = ClassData()
        checkWithoutInout(a: data)
        print(data.b)
        ///////////////////////////////////////////////////////////////////////
        
        
    }
    
    
    
    // For Structure
    func checkStructureInout(a:inout StructData){
        a.b = 13;
    }
    
    
    
    // For Class
    func checkInoutForClass(a:inout ClassData){
        a.b = 20
    }
    
    func checkWithoutInout(a:ClassData){
        a.b = 20
    }
    
    
    
    
}



