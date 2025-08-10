//
//  BaseScreen.swift
//  TasksUITests
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

class BaseScreen {
    static let app = XCUIApplication()
    
    let element: XCUIElement
    
    required init(element: XCUIElement = app) {
        self.element = element
    }
}

extension BaseScreen {
    func hideKeyboard() {
        if BaseScreen.app.keyboards.element(boundBy: 0).exists {
            BaseScreen.app.keyboards.buttons["Return"].tap()
        }
    }
}
