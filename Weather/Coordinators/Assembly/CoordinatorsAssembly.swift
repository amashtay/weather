//
//  CoordinatorsAssembly.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 20.12.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import Foundation
import Swinject

class CoordinatorsAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(AppCoordinator.self) { resolver in
            let appCoordinator = AppCoordinator()
            appCoordinator.rootVC = resolver.resolve(GeneralBarViewController.self)!
            return appCoordinator
        }
    }
    
}

