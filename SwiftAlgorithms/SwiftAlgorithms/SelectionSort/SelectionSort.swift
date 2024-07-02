//
//  selectsort.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/2.
//

import Foundation

struct SelectionSort {
    static func findSmallest(_ arr: [Int]) -> Int {
        var smallest = arr[0]
        var smallestIndex = 0
        
        
        for (i,v) in arr.enumerated() {
            if v < smallest {
                smallest = v
                smallestIndex = i
            }
        }
        
        return smallestIndex
    }
    
    static func selectionSort(_ arr: inout [Int]) -> [Int] {
        var newArr: [Int] = []
        
        for _ in 0..<arr.count {
            let smallestIndex = findSmallest(arr)
            newArr.append(arr[smallestIndex])
            arr.remove(at: smallestIndex)
        }
        
        return newArr
    }
}
