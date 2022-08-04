//
/**
* Webkul Software.
* @package  ParllelAPICall
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: SerialQueueAndConQueue.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation


func serialQueueExecution(){
    
    // it will add one task then complete then add another task (in serial manner)
    let serialQueue = DispatchQueue(label: "com.queue.Serial")
    
    
    for i in 1...3 {
        serialQueue.async {
        if Thread.isMainThread{
            print("task running in main thread")
        }else{
            print("task running in other thread")
        }
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
        let _ = try! Data(contentsOf: imageURL)
        print("\(i) finished downloading")
    }
    }
    
    
    //Output
    /*
     task running in other thread
     1 finished downloading
     task running in other thread
     2 finished downloading
     task running in other thread
     3 finished downloading
     */
    
    
}


func executemutitaskAndcompleteindifferorder(){
    
    
    // it will add all task and completion not in order means task1 , task 2, task n added but their compltion not in order.
    let serialQueue = DispatchQueue(label: "com.queue.Serial",attributes: .concurrent)
    for i in 1...3 {
        serialQueue.async {
        if Thread.isMainThread{
            print("task running in main thread")
        }else{
            print("task running in other thread")
        }
        let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
        let _ = try! Data(contentsOf: imageURL)
        print("\(i) finished downloading")
    }
    }
    
    
    //Output
    /*
     task running in other thread
     task running in other thread
     task running in other thread
     3 finished downloading
     1 finished downloading
     2 finished downloading
     */
    
    
    
}



