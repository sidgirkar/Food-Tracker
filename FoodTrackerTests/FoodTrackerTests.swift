//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Sid Girkar on 1/6/16.
//  Copyright © 2016 Sid Girkar. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    
    // Confirms that the Meal initializer returns when no name, or a negative rating, is provided.
    func testMealInitialization() {
        // Successful case.
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Crappy rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Ratings must be positive")
    }
    
}
