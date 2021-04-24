//
//  SettingsAssembly.swift
//  Weather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit
import Swinject

class SettingsAssembly: Assembly {
    
    func assemble(container: Container) {
        
        container.register(SettingsViewController.self) { resolver in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let controller = sb.instantiateViewController(identifier: "SettingsViewController") as! SettingsViewController
            controller.presenter = resolver.resolve(SettingsViewOutput.self)!
            return controller
        }
        
        /**
         В отличии от GeneralBarAssembly здесь порядок будет следующим
         
         1) SettingsViewOutput
         2) SettingsViewController
         3) SettingsViewRouter
         
         подробнее об этом можно прочитать здесь
         в разделе про графы в Object Scopes
         https://medium.com/flawless-app-stories/ios-dependency-injection-using-swinject-9c4ceff99e41
         */
        container.register(SettingsViewOutput.self) { resolver in
            SettingsPresenter()
        }.initCompleted { (resolver, presenter) in
            let presenter = presenter as! SettingsPresenter
            presenter.controller = (resolver.resolve(SettingsViewController.self)! as SettingsViewInput)
        }
        
        container.register(SettingsRouterProtocol.self) { resolver in
            SettingsRouter(viewController: resolver.resolve(SettingsViewController.self)!)
        }
        
    }
    
}
