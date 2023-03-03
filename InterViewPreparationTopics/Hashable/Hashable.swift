//
//  Hashable.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 21/02/23.
//

import Foundation

// for more info https://www.programiz.com/swift-programming/hashable
struct HashableEmployee: Hashable {
    var name: String
    var salary: Int
    
    // However, sometimes we may want to compare selective properties of the type. In this case,
    // we may use the hash function inside the type
    // ex: here you can add all fields or add hashable on particular key
    func hash(into hasher: inout Hasher) {
      hasher.combine(name)
    }
}

// let obj1 = HashableEmployee(name: "Sabby", salary: 349879)
// let obj2 = HashableEmployee(name: "Sabby", salary: 422532)

// print(obj1.hashValue) 3932232896576771782
// print(obj2.hashValue) 3932232896576771782

// let obj1 = HashableEmployee(name: "Sabbi", salary: 349879)
// let obj2 = HashableEmployee(name: "Sabby", salary: 422532)

// print(obj1.hashValue) 3932232896576771782
// print(obj2.hashValue) 2424242896576724242

