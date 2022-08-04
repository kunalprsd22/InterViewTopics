//
//  CheckLogsVC.swift
//  PracticeSep22
//
//  Created by Appinventiv on 02/08/22.
//

import UIKit
import os
import os.log

class CheckLogsVC: UIViewController {
    
    var flag = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { timer in
            self.flag = !self.flag
            self.view.backgroundColor = self.flag ? .red : .green
            // MARK: -  it will print only in Xcode debugger
            print("Kunal print ")
            
            // MARK: -  it will print the value on console App. select device & search for process name (project name)
            NSLog(" \n Kunal NSLog")
            os_log(.info," \n Kunal os_log")
        }
    }
    
}
