//
//  LogoutAlertScreen.swift
//  TasksUITests
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class LogoutAlertScreen: BaseScreen {
    private lazy var logourAlerScreenTitle: StaticText = element.alerts.firstMatch.staticTexts["Do you really want to logout?"].build()
    private lazy var cancelButton: Button = element.alerts.firstMatch.buttons["Cancel"].build()
    private lazy var logoutButton: Button = element.alerts.firstMatch.buttons["Logout"].build()
}

//MARK: - Actions
extension LogoutAlertScreen {
    
    @discardableResult
    func cancelLogout() -> TasksScreen {
        cancelButton.tap()
        return TasksScreen()
    }
    
    @discardableResult
    func confirmLogout() -> LoginScreen {
        logoutButton.tap()
        return LoginScreen()
    }
}

//MARK: - Assertions
extension LogoutAlertScreen {
    
    @discardableResult
    func assertLogoutAlertScreenIsShown() -> Self {
        logourAlerScreenTitle.element.assertExisted()
        return self
    }
}
