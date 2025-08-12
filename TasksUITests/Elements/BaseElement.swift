//
//  BaseElement.swift
//  TasksUITests
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

class BaseElement {
    let timeout = Constants.defaultTimeout
    let element: XCUIElement
    
    required init(element: XCUIElement) {
        self.element = element
    }
    
    func tap() {
        XCTAssert(self.element.waitForExistence(timeout: timeout), "Element: \(self.element.description) does NOT exist")
        self.element.tap()
    }
}
