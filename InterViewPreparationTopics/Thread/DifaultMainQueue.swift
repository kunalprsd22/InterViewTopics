//
/**
* Webkul Software.
* @package  ParllelAPICall
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: DifaultMainQueue.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation



func callAPI(){
       
       var value: Int = 2

      
       // it is running on main queue in async mode
       DispatchQueue.main.async {
           for i in 0...1000 {
               value = i
               print("\(value) ✴️")
           }
       }

       // it is running on main queue
       for i in 4...600 {
           value = i
           print(Thread.isMainThread)
           print("\(value) ✡️")
       }

    
       DispatchQueue.main.async {
           value = 9
           print(value)
       }
       
   }



func nestedAsyncCallSerialQuue(){
    
    // In this order is same
    
    let basicQueue = DispatchQueue(label: "com.ios.ssss");
           
           basicQueue.async {
               print("1");
               basicQueue.async {
                   print("2")
               }
           }
           basicQueue.async {
               print("3");
               basicQueue.async {
                   print("4")
               }
           }
           basicQueue.async {
               print("5");
               basicQueue.async {
                   print("6")
               }
           }
           
    
    //OUTPUT
    /*
     135246
     */
}

func nestedAsyncCallConcurrentQueue(){
    
    // In this order is differ all the time
       
    let basicQueue = DispatchQueue(label: "com.ios.ssss", attributes: .concurrent);
              basicQueue.async {
                  print("1");
                  basicQueue.async {
                      print("2")
                  }
              }
              basicQueue.async {
                  print("3");
                  basicQueue.async {
                      print("4")
                  }
              }
              basicQueue.async {
                  print("5");
                  basicQueue.async {
                      print("6")
                  }
              }
              
       
       //OUTPUT
       /*
        varry every time
        
        */
    
}


func AsyncContainsSync(){
    

    /*
     An asynchronous function returns immediately,
     ordering the task to start but not waiting for it to complete.
     Thus, an asynchronous function does not block the current
     thread of execution from proceeding on to the next function.
     */
    
    // it will crash
    
    let basicQueue = DispatchQueue(label: "com.ios.ssss");
    
    basicQueue.async {
        print("1")
        basicQueue.sync {
            print("2")
        }
        
    }
    
}
