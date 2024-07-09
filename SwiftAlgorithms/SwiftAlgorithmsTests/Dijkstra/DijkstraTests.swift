//
//  DijkstraTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/9.
//

import Foundation

import XCTest

final class DijkstraTests: XCTestCase {
    var graph: [String: [String : Int ]] = [:]
    var costs: [String : Int] = [:]
    var parents: [String : String] = [:]
    
    func initGraph() {
        graph["start"] = [:]
        graph["start"]!["a"] = 6
        graph["start"]!["b"] = 2
        
        graph["a"] = [:]
        graph["a"]!["fin"] = 1
        
        graph["b"] = [:]
        graph["b"]!["a"] = 3
        graph["b"]!["fin"] = 5
        
        graph["fin"] = [:]
    }
    
    func initCost() {
        costs["a"] = 6
        costs["b"] = 2
        costs["fin"] = 999
    }
    
    func initParents() {
        parents["a"] = "start"
        parents["b"] = "start"
        parents["fin"] = ""
    }
    
    
    
    func testDijkstraSearch() {
        initGraph()
        initCost()
        initParents()
        
        costs = Dijkstra.dijkstra(graph, &costs, &parents)
        print(costs)
        
    }
}
