//
//  MainScreen.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class TasksScreen: BaseTaskScreen {
    
    private var cellWithSubtask: TaskCell {
        
        guard let result = cells.filter({ $0.moreInfoButton != nil }).first else {
            XCTFail("There are NO tasks with subtasks")
            fatalError()
        }
        
        return result
    }

}

//MARK: - Actions
extension TasksScreen {
    
    @discardableResult
    func navigateToSubtaskScreen() -> SubtaskScreen {
        cellWithSubtask.moreInfoButton?.tap()
        return SubtaskScreen()
    }
    
    @discardableResult
    func completeTaskWithSubtasks() -> Self {
        cellWithSubtask.tap()
        return self
    }
}

//MARK: - Assertions
extension TasksScreen {
    
    @discardableResult
    func assertTaskWithSubtasksIsCompleted() -> Self {
        XCTAssert(cellWithSubtask.isSelected, "Task with subtasks is NOT completed")
        return self
    }
}
