//
//  XCUIElement.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    func build<Element: BaseElement>() -> Element {
        return Element.init(element: self)
    }
    
    @discardableResult
    func assertExisted() -> Self {
        
        XCTAssert(
            self.waitForExistence(timeout: Constants.defaultTimeout),
            "Element: \(self.debugDescription) does NOT exists in \(Constants.defaultTimeout) seconds waiting"
        )
        
        return self
    }
}
