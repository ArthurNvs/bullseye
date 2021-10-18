//
//  BullseyeTest.swift
//  BullseyeTest
//
//  Created by Arthur Neves on 16/10/21.
//

import XCTest

class BullseyeTest: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }
    
    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(targetValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(targetValue: guess)
        XCTAssertEqual(score, 95)
    }
}
