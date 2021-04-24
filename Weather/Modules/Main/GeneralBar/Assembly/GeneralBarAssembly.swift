//
//  GeneralBarAssembly.swift
//  Weather
//
//  Created by Александр Тонхоноев on 13.01.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import Swinject
import UIKit

class GeneralBarAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(GeneralBarViewController.self) { resolver in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let controller = sb.instantiateViewController(withIdentifier: "GeneralBarViewController") as! GeneralBarViewController
            
            controller.tabsModuleControllers = [
                resolver.resolve(WeatherViewController.self)!,
                resolver.resolve(SettingsViewController.self)!
            ]
            
            controller.presenter = resolver.resolve(GeneralBarViewOutput.self)!
            return controller
        }
        
        container.register(GeneralBarViewOutput.self) { resolver in
            GeneralBarPresenter()
        }.initCompleted { (resolver, generalBarViewOutputImpl) in
            let presenter = generalBarViewOutputImpl as! GeneralBarPresenter
            presenter.controller = resolver.resolve(GeneralBarViewController.self)
        }
        
    }
    
}
