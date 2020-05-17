//
//  WheatherWireframe.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 17.05.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit
import Swinject

final class WheatherWireframe: NSObject {
    
    static func createModule() -> UIViewController {
        let resolver = Assembler([WheatherAssembly()]).resolver
        return resolver.resolve(WheatherViewController.self)! as UIViewController
    }
    
}
