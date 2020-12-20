//
//  SettingsWireframe.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 21.12.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit
import Swinject

final class SettingsWireframe {
    
    static func createModule() -> UIViewController {
        let resolver = ApplicationAssembler.shared.resolver
        return resolver.resolve(SettingsViewController.self)!
    }
    
}
