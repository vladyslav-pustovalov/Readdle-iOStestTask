//
//  LoginScreen.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class LoginScreen: BaseScreen {
    private lazy var emailTextField: TextField = element.textFields["Email"].build()
    private lazy var passwordSecureTextField: SecureTextField = element.secureTextFields["Password"].build()
    private lazy var loginButton: Button = element.buttons["login-button"].build()
}

// MARK: - Actions
extension LoginScreen {
    
    @discardableResult
    func typeEmail(_ email: String) -> Self {
        emailTextField.tap()
        emailTextField.element.typeText(email)
        hideKeyboard()
        return self
    }
    
    @discardableResult
    func typePassword(_ password: String) -> Self {
        passwordSecureTextField.element.tap()
        passwordSecureTextField.element.typeText(password)
        hideKeyboard()
        return self
    }
    
    @discardableResult
    func login() -> TasksScreen {
        loginButton.tap()
        return TasksScreen()
    }
}

// MARK: = Assertions
extension LoginScreen {
    
    @discardableResult
    func assertLoginScreenIsShown() -> Self {
        loginButton.element.assertExisted()
        return self
    }
    
    @discardableResult
    func assetLoginButtonIsEnabled() -> Self {
        XCTAssertTrue(loginButton.element.isEnabled, "Login Button is NOT enabled")
        return self
    }
}

