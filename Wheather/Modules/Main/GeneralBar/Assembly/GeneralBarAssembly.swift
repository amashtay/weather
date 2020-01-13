//
//  GeneralBarAssembly.swift
//  Wheather
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
            controller.presenter = resolver.resolve(GeneralBarViewOutput.self)!
            return controller
        }
        
        container.register(GeneralBarViewOutput.self) { resolver in
            let presenter = GeneralBarPresenter()
            presenter.controller = resolver.resolve(GeneralBarViewController.self)! as GeneralBarViewInput
            return presenter
        }.initCompleted { (resolver, presenter) in
            let controller = resolver.resolve(GeneralBarViewController.self)!
            controller.presenter = presenter
        }
        
    }
    
}
