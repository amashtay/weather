//
//  SettingsTableCellObject.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

class SettingsTableCellObject {

    let title: String
    let action: (() -> ())?
    
    // MARK: Initializer
    
    required init(title: String,
                  action: (() -> ())? = nil) {
        self.title = title
        self.action = action
    }
    
}
