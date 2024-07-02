//
//  MergeSort.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/2.
//

import Foundation

struct MergeSort {
    static func mergeSort(_ a: inout [Int], _ p: Int, _ r: Int) {
        if p >= r {
            return
        }
        
        let q = (p + r) / 2

        mergeSort(&a, p, q)
        mergeSort(&a, q+1, r)

        merge(&a, p, q, r)
    }
    
    static func merge(_ a: inout [Int], _ p: Int, _ q: Int, _ r: Int) {
        let la = Array(a[p...q])
        let ra = Array(a[q+1...r])
                
        var i = 0
        var j = 0
        var k = p
        
        while i < la.count && j < ra.count  {
            if la[i] <= ra[j] {
                a[k] = la[i]
                i = i + 1
            } else {
                a[k] = ra[j]
                j = j + 1
            }
            k = k + 1
        }
        
        while i < la.count {
            a[k] = la[i]
            i = i + 1
            k = k + 1
        }
        
        while j < ra.count {
            a[k] = ra[j]
            j = j + 1
            k = k + 1
        }
        
    }
    
}
