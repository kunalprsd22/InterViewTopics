//
/**
* Webkul Software.
* @package  ThreadUse
* @Category Webkul
* @author Webkul <support@webkul.com>
* FileName: ClassAndStructAddress.swift
* @Copyright (c) 2010-2019 Webkul Software Private Limited (https://webkul.com)
* @license https://store.webkul.com/license.html ASL Licence
* @link https://store.webkul.com/license.html

*/


import Foundation



func address(_ o: UnsafeRawPointer) -> Int {
      return Int(bitPattern: o)
  }

  func addressHeap<T: AnyObject>(o: T) -> Int {
      return unsafeBitCast(o, to: Int.self)
}
