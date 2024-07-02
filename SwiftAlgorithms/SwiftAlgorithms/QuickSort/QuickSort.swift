//
//  QuickSort.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/2.
//

import Foundation

struct QuickSort {
    static func quickSort(_ a: inout [Int]) -> [Int] {
        if a.count < 2 {
            return a
        } else {
            let index = a.count / 2
            let pivot = a[index]
            
            a.remove(at: index)
            var less = findArrayLessEqualThanPivot(a, pivot)
            var greater = findArrayGreaterThanPivot(a, pivot)
            
            return quickSort(&less) + [pivot] + quickSort(&greater)
        }
        
        
        
    }
    
    static func findArrayLessEqualThanPivot(_ a: [Int], _ pivot: Int) -> [Int] {
        var r: [Int] = []
        
        for v in a {
            if v <= pivot {
                r.append(v)
            }
        }
        
        return r
    }
    
    static func findArrayGreaterThanPivot(_ a: [Int], _ pivot: Int) -> [Int] {
        var r: [Int] = []
        
        for v in a {
            if v > pivot {
                r.append(v)
            }
        }
        
        return r
    }
}
