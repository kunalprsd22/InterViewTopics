//
/**
* Webkul Software.
* @package  ParllelAPICall
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: StaticVsClass.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation


// Static Function & Variable will not be override only Class typw will support

class Person {
    static var count: Int {
        return 250
    }

    class var averageAge: Double {
        return 30
    }
    
    
}

class Student: Person {
    // THIS ISN'T ALLOWED
    // override static var count: Int {
    //    return 150
    // }

    
    
    // THIS IS ALLOWED
    override class var averageAge: Double {
        return 19.5
    }
}
