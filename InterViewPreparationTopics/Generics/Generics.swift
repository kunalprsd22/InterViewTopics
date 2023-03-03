//
//  Generics.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 09/08/22.
//

import Foundation

protocol AddProtocol {
    static func +(_ l:Self , _ r:Self) -> Self
}

extension Int : AddProtocol {
    // you can define own function as well
//    static func +(_ l:Int , _ r:Int) -> Int {
//        return 12
//    }
}

extension String : AddProtocol {}


class Generics {
    
    func customAdd<T: AddProtocol>(a:T,b:T) -> T {
        return a + b
    }
    
    // Example print(customAdd(a: 12, b: 12))
}


extension String {
    static func + (lhs: String, rhs: String) -> String {
        switch (lhs, rhs) {
        case ("🛹", "❄️"):
            return "🏂"
        case ("😬", "❄️"):
            return "🥶"
        case ("😢", "🔥"):
            return "🥵"
        case ("🥕", "🥬"):
            return "🥬"
        case ("🥬", "🥒"):
            return "🥒"
        case ("🥒", "🍅"):
            return "🥗"
        case ("🧔", "💈"):
            return "👶🏻"
        case ("🦏", "🌈"):
            return "🦄"
        case ("🔨", "🔧"):
            return "🛠"
        default:
            print("\(lhs) and \(rhs) not matched")
            return "⁉️"
        }
    }
}
