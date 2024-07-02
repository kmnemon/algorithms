//
//  MergeSortTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/2.
//

import XCTest

final class MergeSortTests: XCTestCase {
    func testMergeSort() {
        var arr = [12, 3, 7, 9, 14, 6, 11, 2]
        MergeSort.mergeSort(&arr, 0, 7)
        print(arr)
    }
}
