//
//  BaseMainScreenTest.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

class BaseTaskScreenTest: BaseTest {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
        app.launch()
        
        LoginScreen()
            .typeEmail("test@mm.cc")
            .typePassword("1")
            .login()
            .autoNavigateToTasksScreen()
            .assertScreenIsShown()
    }
}
