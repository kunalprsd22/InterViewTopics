//
/**
 * Webkul Software.
 * @package  ParllelAPICall
 * @Category Webkul
 * @author Webkul <support@webkul.com>
 * FileName: WeakStrong.swift
 * @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
 * @license https://store.webkul.com/license.html ASL Licence
 * @link https://store.webkul.com/license.html
 
 */


import Foundation


class Main12{
    
    
    /* Weak & unownded is used for only class & Class bound Protocol
       if we are using singleton class there is no retain issue because static is fixed memory allocated
       so no retain there.
    */
    
    
    init() {
        var t:WeakStrong1? = WeakStrong1()
        t?.callClosureFunc()
        t = nil
    }
    
}












class SharedInstance{
    
    static var shared = SharedInstance()
    
    func someFunction(val:(Int)->Void){
        val(2)
    }
    
}




class WeakStrong1{
    //weak var obj:WeakStrong2?
    var t:Int = 5;
    
    
    init() {
        
    }
    
    func callClosureFunc(){
        SharedInstance.shared.someFunction { value in
            print(t)
        }
        
    }
    
    deinit {
        print("de initalize WeakStrong1")
    }
    
}

class WeakStrong2{
    var obj:WeakStrong1?
    
    init() {
    }
    
    deinit {
        print("de initalize WeakStrong2")
    }
    
}
