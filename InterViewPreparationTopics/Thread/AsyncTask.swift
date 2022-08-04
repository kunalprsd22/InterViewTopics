////
///**
// * Webkul Software.
// * @package  ParllelAPICall
// * @Category Webkul
// * @author Webkul <support@webkul.com>
// * FileName: ViewController.swift
// * @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
// * @license https://store.webkul.com/license.html ASL Licence
// * @link https://store.webkul.com/license.html
//
// */
//
//
//
//
//import UIKit
//
//class AsyncTaskClass {
//
//    let queue = OperationQueue()
//    var observation : NSKeyValueObservation?
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        queue.qualityOfService = .userInitiated
//
//
//
//
//        // measuring time for code execution
//        //        let startTime = CFAbsoluteTimeGetCurrent()
//        //        let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
//        //        print("Time elapsed for \(timeElapsed) s.")
//        //
//
//        //        observation = queue.observe(\.operationCount, options: [.new]) { [unowned self] (queue, change) in
//        //            if change.newValue! == 0 {
//        //                self.observation = nil
//        //
//        //            }
//        //
//        //
//        //        }
//
//        self.callAPI_OPERATION()
//
//    }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//    func callAPI_OPERATION(){
//
//        if let urlDAta1 = URL(string: "https://picsum.photos/id/579/200/300"){
//            let op1 = AsyncTask(url:urlDAta1)
//            op1.queuePriority = .high
//
//            queue.addOperation(op1)
//            
//
//
//            op1.completionBlock = {
//                print("op1")
//            }
//
//
//        }
//        //
//        //        if let urlDAta2 = URL(string: "https://picsum.photos/id/579/200/300"){
//        //            let op1 = AsyncTask(url:urlDAta2)
//        //
//        //            queue.addOperation(op1)
//        //
//        //            op1.completionBlock = {
//        //                print("op2")
//        //            }
//        //        }
//
//
//
//
//
//
//    }
//
//
//
//
//
//
//
//
//
//
//
//
//
//    //MARK:- GCD Implementation with Dispatch Group
//
//    //    func callAPI(){
//    //
//    //        let networkAPIQUEUE = DispatchQueue.global(qos: .userInitiated);
//    //        let dispatchGroup = DispatchGroup()
//    //
//    //
//    //        let dispatchWorkItem1 = DispatchWorkItem{
//    //            print("work item1 start")
//    //            sleep(1)
//    //            print("work item1 end")
//    //
//    //            dispatchGroup.enter()
//    //            dispatchGroup.leave()
//    //
//    //        }
//    //
//    //        let dispatchWorkItem2 = DispatchWorkItem{
//    //            print("work item2 start")
//    //            sleep(1)
//    //            print("work item2 end")
//    //            dispatchGroup.enter()
//    //
//    //        }
//    //
//    //
//    //        networkAPIQUEUE.async(group: dispatchGroup, execute: dispatchWorkItem1)
//    //        networkAPIQUEUE.async(group: dispatchGroup, execute: dispatchWorkItem2)
//    //
//    //
//    //
//    //
//    //        dispatchGroup.notify(queue: DispatchQueue.global()) {
//    //            print("dispatch group over")
//    //        }
//    //
//    //
//    //    }
//
//
//
//
//}
//
//
//
//
//class AsyncTask:Operation{
//
//    var imageURL:URL
//
//
//    private var _executing = false {
//        willSet {
//            willChangeValue(forKey: "isExecuting")
//        }
//        didSet {
//            didChangeValue(forKey: "isExecuting")
//        }
//    }
//
//    override var isExecuting: Bool {
//        return _executing
//    }
//
//
//    private var _finished = false {
//        willSet {
//            willChangeValue(forKey: "isFinished")
//        }
//
//        didSet {
//            didChangeValue(forKey: "isFinished")
//        }
//    }
//
//    override var isFinished: Bool {
//        print("Finished",_finished )
//        return _finished
//    }
//
//    func executing(_ executing: Bool) {
//        print("executing",_executing )
//        _executing = executing
//    }
//
//    func finish(_ finished: Bool) {
//        _finished = finished
//    }
//
//    init(url:URL) {
//        self.imageURL = url
//    }
//
//
//    override func main() {
//        //4
//        if isCancelled {
//            return
//        }
//
//        //5
//        guard let imageData = try? Data(contentsOf: imageURL) else { return }
//        self.executing(true)
//        //6
//        if isCancelled {
//            return
//        }
//
//        if !imageData.isEmpty{
//            self.finish(true)
//            self.executing(false)
//            print("downloaded")
//        }
//    }
//
//
//    //    override func start() {
//    //        print("start")
//    //        self.main()
//    //    }
//}
//
