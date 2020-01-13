//
//  GeneralBarWireframe.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 13.01.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit
import Swinject

final class GeneralBarWireframe {
    
    static func createModule() -> UIViewController {
        let resolver = Assembler([GeneralBarAssembly()]).resolver
        return resolver.resolve(GeneralBarViewController.self)! as UIViewController
    }
    
    
}
