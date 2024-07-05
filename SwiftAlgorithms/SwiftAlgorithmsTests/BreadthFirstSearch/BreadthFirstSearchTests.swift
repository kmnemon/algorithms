//
//  BreadthFirstSearchTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/5.
//

import XCTest

final class BreadthFirstSearchTests: XCTestCase {
    var graph: [String: [String]] = [:]
    
    func initGraph() {
        graph["you"] = ["alice", "bob", "claire"]
        graph["alice"] = ["peggy"]
        graph["bob"] = ["anuj", "peggy"]
        graph["claire"] = ["thom", "jonny"]
        graph["peggy"] = []
        graph["anuj"] = []
        graph["thom"] = []
        graph["jonny"] = []
    }
    
    
    
    
    func testBreadthFirstSearch() {
        initGraph()
        
        print(BreadthFirstSearch.breadthFirstSearch(graph, "peggy"))
    }
}
