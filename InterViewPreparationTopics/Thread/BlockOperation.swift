//
/**
* Webkul Software.
* @package  ParllelAPICall
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: BlockOperation.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation



func concurrentBlockOperation(){
    
    let queue = OperationQueue()

    for i in 1...3 {
        let dependentOperation = BlockOperation()
        dependentOperation.addExecutionBlock {
            if !dependentOperation.isCancelled {
                print("###### Operation \(i) in progress ######")
                let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
                let _ = try! Data(contentsOf: imageURL)
                
                print("Image \(i) downloaded...")
            }
        }
        dependentOperation.queuePriority = .high
        
        let operation = BlockOperation {
            print("Execute Operation \(i), Once dependent work is done")
        }
        
        // it provide the dependency on each operation compelte
        operation.addDependency(dependentOperation)
        
        // here the task added one by one without comeplting
        queue.addOperations([operation,dependentOperation], waitUntilFinished: false)
    }
    
}


func serialBlockOperation(){
    
    let queue = OperationQueue()

       for i in 1...3 {
           let dependentOperation = BlockOperation()
           dependentOperation.addExecutionBlock {
               if !dependentOperation.isCancelled {
                   print("###### Operation \(i) in progress ######")
                   let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
                   let _ = try! Data(contentsOf: imageURL)
                   
                   print("Image \(i) downloaded...")
               }
           }
           dependentOperation.queuePriority = .high
           
           let operation = BlockOperation {
               print("Execute Operation \(i), Once dependent work is done")
           }
           
           // it provide the dependency on each operation compelte
           operation.addDependency(dependentOperation)
           
           // here the task added one after completing it adds another
           queue.addOperations([operation,dependentOperation], waitUntilFinished: true)
       }
       
    
}
