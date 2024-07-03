//
//  Recursion.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/2.
//

import Foundation

struct Recursion {
    func fact(_ x: Int) -> Int {
        if x == 1 {
            return 1
        } else {
            return x * fact(x - 1)
        }
    }
    
    func factTR(_ x: Int, _ a: Int) -> Int {
        if x == 1 {
            return a
        }
        
        return factTR(x-1, x*a)
    }
    
    func fact2(_ x: Int) -> Int {
        return factTR(x, 1)
    }
    
}
