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
    }

}

extension GeneralBarViewController: GeneralBarViewInput {
    
}
