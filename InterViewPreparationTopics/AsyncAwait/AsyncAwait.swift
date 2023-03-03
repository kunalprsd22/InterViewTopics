//
//  AsyncAwait.swift
//  InterViewPreparationTopics
//
//  Created by Appinventiv on 28/02/23.
//

import Foundation

class AsyncAwaitUse {
    
    func fetchWeatherHistory() async -> [Double] {
        sleep(3)
        return [110.0]
    }
    
    func processWeather() async {
        let records = await fetchWeatherHistory()
        print("Server response: \(records)")
    }
    
    // MARK: - to execute the function write inside the Task block
    func executeFunction() {
        Task{
            await processWeather()
            print("completed")
        }
        print("other function")
    }
    
    
}
