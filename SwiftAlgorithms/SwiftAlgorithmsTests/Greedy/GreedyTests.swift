//
//  GreedyTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/16.
//

import XCTest

final class GreedyTests: XCTestCase {
    func initStates() -> Set<String> {
        let statesNeeded: Set<String> = ["mt", "wa", "or", "id", "nv", "ut", "ca", "az"]
        
        return statesNeeded
    }
    
    
    func initStations() -> [String : Set<String>] {
        var stations: [String : Set<String>] = [:]
        stations["kone"] = ["id", "nv", "ut"]
        stations["ktwo"] = ["wa", "id", "mt"]
        stations["kthree"] = ["or", "nv", "ca"]
        stations["kfour"] = ["nv", "ut"]
        stations["kfive"] = ["ca", "az"]
        
        return stations
    }
    
    func testGreedy() {
        let g = Greedy()
        let stations = initStations()
        var states = initStates()
        let finalStations = g.findBestStation(stations, &states)
        print(finalStations)
    }
}
