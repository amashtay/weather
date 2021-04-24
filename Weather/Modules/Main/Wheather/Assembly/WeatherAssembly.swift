//
//  WeatherAssembly.swift
//  Weather
//
//  Created by Александр Тонхоноев on 17.05.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit
import Swinject

class WeatherAssembly: Assembly {

    func assemble(container: Container) {
        
        container.register(WeatherViewController.self) { resolver in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let controller = sb.instantiateViewController(identifier: "WeatherViewController") as! WeatherViewController
            controller.presenter = resolver.resolve(WeatherViewOutput.self)!
            return controller
        }
        
        container.register(WeatherViewOutput.self) { resolver in
            WeatherPresenter()
        }.initCompleted { (resolver, service) in
            let presenter = service as! WeatherPresenter
            presenter.controller = (resolver.resolve(WeatherViewController.self)! as WeatherViewInput)
        }
            
//        container.register(WeatherRouterProtocol.self) { resolver in
//            SettingsRouter(viewController: resolver.resolve(SettingsViewController.self)!)
//        }
    }
    
}
