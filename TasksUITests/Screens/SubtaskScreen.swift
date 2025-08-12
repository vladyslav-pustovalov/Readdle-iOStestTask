//
//  SubtaskScreen.swift
//  TasksUITests
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class SubtaskScreen: BaseTaskScreen {
    private lazy var backButton: Button = element.navigationBars.firstMatch.buttons["Tasks"].build()
}

//MARK: - Actions
extension SubtaskScreen {
    
    @discardableResult
    func navigateBackToTasksScreen() -> TasksScreen {
        backButton.tap()
        return TasksScreen()
    }
}

//MARK: - Assertions
extension SubtaskScreen {
    
}
