//
//  BreadthFirstSearch.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/5.
//

import Foundation

enum QueueError: Error {
    case empty
}

class Queue<T> {
    var items: [T] = []
    
    func Enqueue(item: T) {
        self.items.append(item)
    }

    func Dequeue() throws -> T  {
        if items.isEmpty {
            throw QueueError.empty
        }
        
        let item = self.items[0]
        self.items.remove(at: 0)
        
        return item
    }
    
    func IsEmpty() -> Bool {
        return self.items.isEmpty
    }
    
    func addArrayToQueue(_ arr: [T]) {
        for a in arr {
            self.Enqueue(item: a)
        }
    }
}

struct BreadthFirstSearch {
    static func breadthFirstSearch(_ graph: [String:[String]], _ name: String) -> Bool {
        let searchDeque = Queue<String>()
        searchDeque.addArrayToQueue(graph["you"] ?? [""])
        var searched: [String: Int] = [:]
        
        while !searchDeque.IsEmpty() {
            let person = try! searchDeque.Dequeue()
            if searched[person] != nil{} else{
                if findPerson(person, name) {
                    print("found the person")
                    return true
                } else {
                    searchDeque.addArrayToQueue(graph[person] ?? [""])
                    searched[person] = 1
                }
            }
        }
        
        return false
    }
    
    static func findPerson(_ person: String, _ name: String) -> Bool {
        if person == name {
            return true
        } else {
            return false
        }
    }
    
}


