//
//  AppCoordinator.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 21.12.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

final class AppCoordinator {
    
    var window: UIWindow?
}

extension AppCoordinator: CoordinatorProtocol {
    
    func start() {
        
        let vc = GeneralBarWireframe.createModule()
        
        if window == nil {
            window = UIWindow(frame: UIScreen.main.bounds)
        }
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
    
}
