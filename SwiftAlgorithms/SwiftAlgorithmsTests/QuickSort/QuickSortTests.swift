//
//  QuickSortTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/2.
//

import XCTest

final class QuickSortTests: XCTestCase {
    func testQuickSort() {
        var arr = [3, 1, 5, 8, 6, 6, 9]
        let sortedArr = QuickSort.quickSort(&arr)
        print(sortedArr)
    }
}
