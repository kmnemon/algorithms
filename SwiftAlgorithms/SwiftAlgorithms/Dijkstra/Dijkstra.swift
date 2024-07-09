//
//  Dijkstra.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/9.
//

import Foundation

class Dijkstra {
    static private var processed = Set<String>()
    
    static func dijkstra(_ graph: [String : [String : Int]], _ costs: inout [String : Int], _ parents: inout [String : String]) -> [String : Int] {
        var node = findLowestCostNode(costs)
        while let nodev = node {
            let cost = costs[nodev]!
            let neighbors = graph[nodev]!
            for (n, c) in neighbors {
                let newCost = cost + c
                if costs[n]! > newCost {
                    costs[n] = newCost
                    parents[n] = node
                 }
            }
            processed.insert(nodev)
            node = findLowestCostNode(costs)
        }
        
        return costs
    }
    
    static func findLowestCostNode(_ costs: [String : Int]) -> String? {
        var lowestCost = 9999
        var lowestCostNode: String?
        
        for (node, cost) in costs {
            if cost < lowestCost && !processed.contains(node){
                lowestCost = cost
                lowestCostNode = node
            }
        }
        
        return lowestCostNode
    }
}
