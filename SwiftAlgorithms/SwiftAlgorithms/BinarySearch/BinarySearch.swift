//
//  BinarySearch.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/2.
//

import Foundation



struct BinarySearch {
    static func binarySearch(_ a: [Int], _ item: Int) -> Int {
        var low = 0
        var high = a.count - 1
        
        while low <= high {
            var mid = (low + high) / 2
            let guess = a[mid]
            
            if guess == item {
                return mid
            } else if guess > item {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return -1
    }
}
