//
//  InsertSort.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/2.
//

import Foundation

struct InsertSort {
    static func insertSort(_ a: inout [Int]) {
        for (i, v) in a.enumerated() {
            if i == 0 {
                continue
            }
            
            var j = i - 1
            while j >= 0 && a[j] > v {
                a[j+1] = a[j]
                j = j - 1
            }
            a[j+1] = v
        }
    }
}
