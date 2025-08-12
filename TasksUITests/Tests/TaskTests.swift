//
//  TaskTests.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class TaskTests: BaseTaskScreenTest {
    
    func testTaskIsSelected() {
        TasksScreen()
            .clickFirstCell()
            .assertFirstTaskIsCompleted()
    }
    
    func testAllTasksAreCompleted() {
        TasksScreen()
            .completeAllTasks()
            .assertAllTasksAreCompleted()
    }
    
    func testTasksAreSortedByName() {
        TasksScreen()
            .sortTasksByName()
            .assertTasksAreSortedByName()
    }
    
    func testAllTasksAreNotCompleted() {
        TasksScreen()
            .completeAllTasks()
            .cancellAllTasks()
            .assertAllTasksAreNotCompleted()
    }
    
    func testAllSubtasksAreCompletedWhenTaskIsCompleted() {
        TasksScreen()
            .completeTaskWithSubtasks()
            .navigateToSubtaskScreen()
            .assertAllTasksAreCompleted()
    }
    
    func testTaskIsCompletedWhenAllSubtasksAreCompleted() {
        TasksScreen()
            .navigateToSubtaskScreen()
            .completeAllTasks()
            .navigateBackToTasksScreen()
            .assertTaskWithSubtasksIsCompleted()
    }
    
    func testTaskIsCompletedWhenAllSubtasksAreCompletedManually() {
        TasksScreen()
            .navigateToSubtaskScreen()
            .completeAllTasksManually()
            .navigateBackToTasksScreen()
            .assertTaskWithSubtasksIsCompleted()
    }
}
