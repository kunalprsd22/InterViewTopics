//
//  Equatable.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 21/02/23.
//

import Foundation

// More Info Link https://www.programiz.com/swift-programming/equatable
struct EquatableEmployee: Equatable {
    
  var name: String
  var salary: Int

  // create a equatable function to only compare age property
  static func == (lhs: EquatableEmployee, rhs: EquatableEmployee) -> Bool {
    return lhs.salary == rhs.salary
  }
}

// initialize two objects with different values for name property
//let obj1 = EquatableEmployee(name: "Sabby", salary: 34000)
//let obj2 = EquatableEmployee(name: "Cathy", salary: 34000)

// compare obj1 and obj2
//if obj1 == obj2 {
//  print("obj1 and obj2 are equal")
//}
//else {
//  print("obj1 and obj2 are not equal")
//}

// obj1 and obj2 are equal
