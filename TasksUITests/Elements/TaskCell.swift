//
//  TaskCell.swift
//  Tasks
//
//  Created by Vladyslav Pustovalov on 10/08/2025.
//  Copyright © 2025 Cultured Code. All rights reserved.
//

import XCTest

final class TaskCell: BaseElement {
    var checkBoxImage: Image
    var descriptionText: StaticText
    var moreInfoButton: Button?
    
    var isSelected: Bool {
        let value = checkBoxImage.element.value as? String
        
        if value == "Selected" {
            return true
        } else if value == "Not selected" {
            return false
        } else {
            XCTFail("It is NOT possible to identify if the task is selected, please check the identifiers")
            return false
        }
    }
    
    var isNotSelected: Bool {
        !isSelected
    }
    
    required init(element: XCUIElement) {
        
        self.checkBoxImage = element.images["cell_image_view"].build()
        self.descriptionText = element.staticTexts.firstMatch.build()
        
        if element.buttons["More Info"].exists {
            self.moreInfoButton = element.buttons["More Info"].build()
        }
        
        super.init(element: element)
    }
}
