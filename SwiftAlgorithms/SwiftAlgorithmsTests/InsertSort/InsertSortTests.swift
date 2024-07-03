//
//  InsertSortTests.swift
//  SwiftAlgorithmsTests
//
//  Created by ke on 2024/7/3.
//

import XCTest

final class InsertSortTests: XCTestCase {
    func testInsertSort() {
        var arr = [12, 3, 7, 9, 14, 6, 11, 2]
        InsertSort.insertSort(&arr)
        print(arr)
    }
}
