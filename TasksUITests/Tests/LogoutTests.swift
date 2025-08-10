//
//  LogoutTests.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

final class LogoutTests: BaseTaskScreenTest {
    
    func testLogoutIsSuccessful() {
        TasksScreen()
            .logout()
            .assertLogoutAlertScreenIsShown()
            .confirmLogout()
            .assertLoginScreenIsShown()
    }
    
    func testCancelLogoutIsSuccessful() {
        TasksScreen()
            .logout()
            .assertLogoutAlertScreenIsShown()
            .cancelLogout()
            .assertScreenIsShown()
    }
}
