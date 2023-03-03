//
//  DispatchWorkItem.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 05/08/22.
//

import Foundation

// refrence https://medium.com/swift-india/parallel-programming-with-swift-part-2-4-46a3c6262359

class simpleWorkItemFlow {
    
    
    let concurrentQueue = DispatchQueue(label: "com.queue.Concurrent", attributes: .concurrent)
    
    init() {
        performAsyncTaskInConcurrentQueue()

        print("###### Download all images asynchronously and notify on completion ######")
        print("############")
        print("############\n")
    }

    func performAsyncTaskInConcurrentQueue() {
        var task:DispatchWorkItem?
        
        task = DispatchWorkItem {
            for i in 1...5 {
                if Thread.isMainThread {
                    print("task running in main thread")
                } else{
                    print("task running in other thread")
                }
                
                if (task?.isCancelled)! {
                    break
                }
                
                let imageURL = URL(string: "https://upload.wikimedia.org/wikipedia/commons/0/07/Huge_ball_at_Vilnius_center.jpg")!
                let _ = try! Data(contentsOf: imageURL)
                print("\(i) finished downloading")
            }
            task = nil
        }
        
        /*
         There are two ways to execute task on queue. Either by providing task to execute parameter or
         within async block call perform() on task. perform() executes task on current queue.
         */
        // concurrentQueue.async(execute: task!)
        
        concurrentQueue.async {
            task?.wait(wallTimeout: .now() + .seconds(2))
            // task?.wait(timeout: .now() + .seconds(2))
            task?.perform()
        }
        // it will cancel the task after 2 second
        concurrentQueue.asyncAfter(deadline: .now() + .seconds(2), execute: {
            task?.cancel()
        })
        
        // it will call when the work item object complete the task.
        task?.notify(queue: concurrentQueue) {
            print("\n############")
            print("############")
            print("###### Work Item Completed")
        }
    }
}




// it is usesd to execute some function on every second on other thread.
class executeCodeOnEverySecond {
    
    private var updateCurrentLocationTimer: DispatchWorkItem!
    
    // Start Call from here
    init(){
        initiateLocationUpdation()
    }
    
    // if there is already object then cancel previous item
    private func initiateLocationUpdation() {
        if let task = updateCurrentLocationTimer {
            task.cancel()
            if task.isCancelled {
                initLocationUpdationTask()
            }
        } else {
            initLocationUpdationTask()
        }
    }
    
    // it is used to cancel the current task
     private func stopLocationUpdation() {
        if let task = updateCurrentLocationTimer {
            task.cancel()
        }
    }
    
    // initialise the item object
    private func initLocationUpdationTask() {
        updateCurrentLocationTimer = getWorkItemObject()
        updateCurrentLocationTimer.perform() // it will start the execution
    }
    
    // it will return workitem object & also call dispatch group on every second to excute this block continious.
    private func getWorkItemObject() -> DispatchWorkItem {
        let task = DispatchWorkItem { [weak self] in
            print("execute code here")
            self?.executeRepeatedly()
        }
        return task
    }
    
    private func executeRepeatedly() {
        DispatchQueue.global(qos:.background).asyncAfter(deadline: .now() + 4, execute: updateCurrentLocationTimer)
    }
    
}
