//
//  GeneralBarViewController.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 21.12.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

class GeneralBarViewController: UITabBarController {
    
    var presenter: GeneralBarViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.moduleWasLoaded()
    }

}

extension GeneralBarViewController: GeneralBarViewInput {
 
    func addTabFromModule(controller: UIViewController) {
        let navWrapper = UINavigationController(rootViewController: controller)
        if viewControllers != nil {
            viewControllers?.append(navWrapper)
        } else {
            viewControllers = [navWrapper]
        }
    }
    
}
