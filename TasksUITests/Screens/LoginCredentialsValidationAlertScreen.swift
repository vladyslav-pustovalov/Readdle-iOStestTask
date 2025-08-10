//
//  LoginCredentialsValidationAlertScreen.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class LoginCredentialsValidationAlertScreen: BaseScreen {
    private lazy var errorHeader: StaticText = element.staticTexts["Error"].build()
    private lazy var errorTextMessage: StaticText = element.staticTexts["Incorrect login or password format"].build()
    private lazy var okButton: Button = element.buttons["Ok"].build()
}

//MARK: - Actions
extension LoginCredentialsValidationAlertScreen {
    
    @discardableResult
    func closeAlert() -> LoginScreen {
        okButton.tap()
        return LoginScreen()
    }
}

// MARK: = Assertions
extension LoginCredentialsValidationAlertScreen {
    
    @discardableResult
    func assertLoginCredentialsValidationAlertIsShown() -> Self {
        XCTAssertTrue(errorTextMessage.element.exists, "Credentials validation alert is not shown")
        return self
    }
}
