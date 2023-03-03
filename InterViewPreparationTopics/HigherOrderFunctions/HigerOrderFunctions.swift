//
//  HigerOrderFunctions.swift
//  PracticeSep22
//
//  Created by Appinventiv on 04/08/22.
//

import UIKit

class HigerOrderFunctions: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sortData()
    }
}

// MARK: - Sort related functions
extension HigerOrderFunctions {
    
    func sortData() {
        let data = [23,1,4,2,1,4,9,0,1]
        
        let normalAscending = data.sorted()
        
        let customize = data.sorted{$0 < $1 }
        
        print(normalAscending)
        print(customize)
    }
}

// MARK: - Map related functions
extension HigerOrderFunctions {
    
    func mapData() {
        let data = [23,1,4,2,1,4,9,0,1]
        
        let normalMap = data.sorted{$0 < $1 }
        
        print(normalMap)
    }
}

// MARK: - allSatisfy related functions
extension HigerOrderFunctions {
    
    func allSatisfyCall() {
        let intValue = [12,13,25,25]
        let result = intValue.allSatisfy{$0 < 30}
        print(result)  // true
    }
}
