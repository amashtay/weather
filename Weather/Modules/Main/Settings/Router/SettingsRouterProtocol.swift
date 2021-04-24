//
//  SettingsRouterProtocol.swift
//  Weather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

protocol SettingsRouterProtocol {

    func presentModally(viewConroller: UIViewController)
    
    func pushToNavigation(viewController: UIViewController)
    
}
