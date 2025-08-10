//
//  BaseTest.swift
//  BaseTest
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

class BaseTest: XCTestCase {
     let app = XCUIApplication()

    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDownWithError() throws {
        app.uninstall()
        super.tearDown()
    }
}
