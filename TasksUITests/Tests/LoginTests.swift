//
//  LoginTests.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class LoginTests: BaseTest {
    let validEmail = "test@tt.cc"
    let emailWithoutAt = "testtt.cc"
    let validPassword = "t"
    
    func test_LoginWithValidCredentialsIsSuccessful() {
        LoginScreen()
            .typeEmail(validEmail)
            .assertLoginButtonIsDisabled()
            .typePassword(validPassword)
            .assetLoginButtonIsEnabled()
            .login()
            .assertLogingProgressLabelIsShown()
            .assertLogingProgressIndicatorIsShown()
            .autoNavigateToTasksScreen()
            .assertScreenIsShown()
    }
    
    func test_LoginWithInvalidEmailShowsAlert() {
        LoginScreen()
            .typePassword(validPassword)
            .assertLoginButtonIsDisabled()
            .typeEmail(emailWithoutAt)
            .assetLoginButtonIsEnabled()
            .login()
        
        LoginCredentialsValidationAlertScreen()
            .assertLoginCredentialsValidationAlertIsShown()
    }
    
    
}
