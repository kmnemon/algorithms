//
//  SelectionSortTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/2.
//

import XCTest

final class SelectionSortTests: XCTestCase {
    func testSelectionSort() {
        var arr = [3, 1, 5, 8, 6, 6, 9]
        let sortedArr = SelectionSort.selectionSort(&arr)
        print(sortedArr)
    }
}
