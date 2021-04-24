//
//  SettingsRouter.swift
//  Weather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

class SettingsRouter: SettingsRouterProtocol {
    
    var viewController: UIViewController?
    
    // MARK: Initializer
    
    required init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    // MARK: SettingsRouterProtocol

    func presentModally(viewConroller: UIViewController) {
        
    }
    
    func pushToNavigation(viewController: UIViewController) {
        
    }
    
}
