//
//  LoginProgressScreen.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 11/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class LoginProgressScreen: BaseScreen {
    private lazy var loginProgressLabel: StaticText = element.staticTexts["login-label"].build()
    private lazy var loginActivityIndicator: ActivityIndicator = element.activityIndicators["login-activity-indicator"].build()
}

//MARK: - Actions
extension LoginProgressScreen {
    
    @discardableResult
    func autoNavigateToTasksScreen() -> TasksScreen {
        return TasksScreen()
    }
}

//MARK: - Assertions
extension LoginProgressScreen {
    
    @discardableResult
    func assertLogingProgressLabelIsShown() -> Self {
        XCTAssert(loginProgressLabel.element.exists, "Login progress label is NOT shown but should be")
        return self
    }
    
    @discardableResult
    func assertLogingProgressIndicatorIsShown() -> Self {
        XCTAssert(loginActivityIndicator.element.exists, "Login progress indicator is NOT shown but should be")
        return self
    }
}
