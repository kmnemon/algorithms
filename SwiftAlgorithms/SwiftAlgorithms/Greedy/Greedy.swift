//
//  Greedy.swift
//  SwiftAlgorithms
//
//  Created by ke on 2024/7/16.
//

import Foundation

class Greedy {
    func findBestStation(_ stations: [String : Set<String>], _ statesNeeded: inout Set<String> ) -> Set<String>{
        var finalStations: Set<String> = []
        
        while !statesNeeded.isEmpty {
            var bestStation: String = ""
            var statesCovered: Set<String> = []
            for (station, statesForStation) in stations {
                let covered = statesNeeded.intersection(statesForStation)
                if covered.count > statesCovered.count {
                    bestStation = station
                    statesCovered = covered
                }
            }
            
            finalStations.insert(bestStation)
            statesNeeded = statesNeeded.subtracting(statesCovered)
        }
        return finalStations
    }
    
}
