//
//  ClosureCapture.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 15/09/22.
//

import Foundation


class InterviewTest {
    
    var name: String = "Abhilash"
    
    lazy var greeting : String = {
        return "Hello \(self.name)"
    }()
    
    deinit{
        print("deini")
    }
}

//let obj = InterviewTest()
//print(obj.greeting)
//obj.name = "sdadsda";
//print(obj.greeting)

// OUTPUT : Abhilash
//          Abhilash

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
class InterviewTest1 {
    
    var name: String = "Abhilash"
    
    lazy var greeting:()-> String = {[weak self] in
        return "Hello \(self?.name)"
    }
    
    deinit{
        print("deini")
    }
}

//let obj = InterviewTest()
//print(obj.greeting())
//obj.name = "sdadsda";
//print(obj.greeting())

// OUTPUT : Abhilash
//          sdadsda
