//
//  WheatherAssembly.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 17.05.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit
import Swinject

class WheatherAssembly: Assembly {

    func assemble(container: Container) {
        
        container.register(WheatherViewController.self) { resolver in
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let controller = sb.instantiateViewController(identifier: "WheatherViewController") as! WheatherViewController
            controller.presenter = resolver.resolve(WheatherViewOutput.self)!
            return controller
        }
        
        container.register(WheatherViewOutput.self) { resolver in
            WheatherPresenter()
        }.initCompleted { (resolver, service) in
            let presenter = service as! WheatherPresenter
            presenter.controller = (resolver.resolve(WheatherViewController.self)! as WheatherViewInput)
        }
            
//        container.register(WheatherRouterProtocol.self) { resolver in
//            SettingsRouter(viewController: resolver.resolve(SettingsViewController.self)!)
//        }
    }
    
}
