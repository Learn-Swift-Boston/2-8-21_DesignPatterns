//
//  DesignPatternsTests.swift
//  DesignPatternsTests
//
//  Created by Matt Dias on 2/16/21.
//

import XCTest
@testable import DesignPatterns

class DesignPatternsTests: XCTestCase {

    func test_client() {
        let exp = expectation(description: "call should complete")

        Client.getPosts { posts in
            exp.fulfill()

            XCTAssertGreaterThan(posts.count, 0)
        }

        wait(for: [exp], timeout: 5.0)
    }

}
