//
/**
* Webkul Software.
* @package  ParllelAPICall
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: OsLog.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation
import os.log


class OSLOG{
    // It helps to log the data in console.app weather the App is foreground or background mode
    
    var username = "kunal"
    
    func test(){
      os_log("View did load!", log: OSLog.viewCycle, type: .info)
      os_log("User %{PUBLIC}@ logged in", log: OSLog.viewCycle, type: .info, username)
    }
    
    
}


extension OSLog {
    private static var subsystem = Bundle.main.bundleIdentifier!

    /// Logs the view cycles like viewDidLoad.
    static let viewCycle = OSLog(subsystem: subsystem, category: "viewcycle")
}
