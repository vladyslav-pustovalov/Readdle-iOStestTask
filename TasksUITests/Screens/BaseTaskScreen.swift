//
//  BaseTaskScreen.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

class BaseTaskScreen: BaseScreen {
    internal private(set) lazy var screenHeader: StaticText = element.navigationBars.staticTexts.firstMatch.build()
    internal private(set) lazy var logoutButton: Button = element.navigationBars.firstMatch.buttons["Logout"].build()
    
    internal private(set) lazy var completeAllButton: Button = element.toolbars.firstMatch.buttons["Complete All"].build()
    internal private(set) lazy var cancellAllButton: Button = element.toolbars.firstMatch.buttons["Cancel All"].build()
    internal private(set) lazy var sortByNameButton: Button = element.toolbars.firstMatch.buttons["sort-tasks-bar-button-item"].build()

    internal var cells: [TaskCell] {
        var result: [TaskCell] = []
        
        for cell in element.tables.firstMatch.cells.allElementsBoundByIndex {
            result.append(cell.build())
        }
        
        return result
    }
    
    internal var firstCell: TaskCell {
        guard let first = cells.first else {
            XCTFail("There are not tasks in the list")
            fatalError()
        }
        
        return first
    }
}

//MARK: - Actions
extension BaseTaskScreen {
    
    @discardableResult
    func logout() -> LogoutAlertScreen {
        logoutButton.tap()
        return LogoutAlertScreen()
    }
    
    @discardableResult
    func clickFirstCell() -> Self {
        firstCell.tap()
        return self
    }
    
    @discardableResult
    func sortTasksByName() -> Self {
        sortByNameButton.tap()
        return self
    }
    
    @discardableResult
    func completeAllTasksManually() -> Self {
        for cell in cells {
            if cell.isNotSelected {
                cell.tap()
            }
        }
        return self
    }
    
    @discardableResult
    func uncompleteAllTasksManually() -> Self {
        for cell in cells {
            if cell.isSelected {
                cell.tap()
            }
        }
        
        return self
    }
    
    @discardableResult
    func completeAllTasks() -> Self {
        completeAllButton.tap()
        return self
    }
    
    @discardableResult
    func cancellAllTasks() -> Self {
        cancellAllButton.tap()
        return self
    }
}

//MARK: - Assertions
extension BaseTaskScreen {
    
    @discardableResult
    func assertScreenIsShown() -> Self {
        screenHeader.element.assertExisted()
        return self
    }
    
    @discardableResult
    func assertFirstTaskIsCompleted() -> Self {
        XCTAssert(firstCell.isSelected, "First task is NOT completed")
        return self
    }
    
    @discardableResult
    func assertAllTasksAreCompleted() -> Self {
        let completedTasks = cells.filter({ $0.isSelected })
        
        XCTAssertEqual(cells.count, completedTasks.count, "Not all the tasks are completed")
        
        return self
    }
    
    @discardableResult
    func assertAllTasksAreNotCompleted() -> Self {
        let notCompletedTasks = cells.filter({ $0.isNotSelected })
        
        XCTAssertEqual(cells.count, notCompletedTasks.count, "There are some completed tasks")
        
        return self
    }
    
    @discardableResult
    func assertTasksAreSortedByName() -> Self {
        let labels = cells.map { $0.descriptionText.element.label }
        
        XCTAssertEqual(labels, labels.sorted(), "Tasks are NOT sorted by Name")
        
        return self
    }
}
