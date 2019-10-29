//
//  SettingsAssembly.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import Swinject

class SettingsAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(SettingsViewController.self) { resolver in
            SettingsViewController()
        }
        
        container.register(SettingsRouterProtocol.self) { resolver in
            SettingsRouter(viewController: resolver.resolve(SettingsViewController.self)!)
        }
        
    }
    
}
