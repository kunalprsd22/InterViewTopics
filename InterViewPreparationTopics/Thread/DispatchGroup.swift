//
/**
* Webkul Software.
* @package  ParllelAPICall
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: DispatchGroup.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation


func getResultOnSameQueue(){
    
    // It will work on same queue & privide the result in same way
    let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent") // Serial Queue
    
    
    let group = DispatchGroup()
    for i in 1...5 {
        
        concurrentQueue.async {
            group.enter()
            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("###### Image \(i) Downloaded ######")
            group.leave()
        }
    }
    
    
    // it will work on same queue
    group.notify(queue:concurrentQueue){
        print("completed")
    }
    
    
   // OUTPUT
   /*
     ###### Image 1 Downloaded ######
     ###### Image 2 Downloaded ######
     ###### Image 3 Downloaded ######
     ###### Image 4 Downloaded ######
     ###### Image 5 Downloaded ######
     completed
     
   */
    
    
}

func getResultOnOtherQueue(){
    
    // It will work on same queue & privide the result in same way
    
    
    let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent") // Serial Queue
    
    
    let group = DispatchGroup()
    for i in 1...5 {
        
        concurrentQueue.async {
            group.enter()
            let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
            let _ = try! Data(contentsOf: imageURL)
            print("###### Image \(i) Downloaded ######")
            group.leave()
        }
    }
    
    
    // it will work on same queue
    group.notify(queue:DispatchQueue.main){
        print("completed")
    }
    
    
    
    
    
   // OUTPUT
   /*
     ###### Image 1 Downloaded ######
     completed
     ###### Image 2 Downloaded ######
     ###### Image 3 Downloaded ######
     ###### Image 4 Downloaded ######
     ###### Image 5 Downloaded ######
     
   */
    
    
   // Here the result will differ
    
}




