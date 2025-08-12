//
//  XCUIApplication.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 09/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

extension XCUIApplication {
    func uninstall(name: String? = nil) {
        self.terminate()
        
        let timeout = TimeInterval(5)
        
        let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
        
        var appName: String {
            if let name { return name }
            else {
                let uiTestRunnerName = Bundle.main.infoDictionary?["CFBundleName"] as! String
                return uiTestRunnerName.replacingOccurrences(of: "UITests-Runner", with: "")
            }
        }
        
        let appIcon = springboard.icons[appName].firstMatch
        if appIcon.waitForExistence(timeout: Constants.defaultTimeout) {
            appIcon.press(forDuration: 1.3)
        } else {
            XCTFail("Failed to find app icon named \(appName)")
        }
        
        let removeAppButton: Button = springboard.buttons["Remove App"].build()
        if removeAppButton.element.waitForExistence(timeout: timeout) {
            removeAppButton.tap()
        } else {
            XCTFail("Failed to find 'Remove App'")
        }
        
        let deleteAppButton: Button = springboard.alerts.buttons["Delete App"].build()
        if deleteAppButton.element.waitForExistence(timeout: timeout) {
            deleteAppButton.tap()
        } else {
            XCTFail("Failed to find 'Delete App'")
        }
        
        let finalDeleteButton: Button = springboard.alerts.buttons["Delete"].build()
        if finalDeleteButton.element.waitForExistence(timeout: timeout) {
            finalDeleteButton.tap()
        } else {
            XCTFail("Failed to find 'Delete'")
        }
    }
}
