//
//  WeatherViewController.swift
//  Weather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController {

    var presenter: WeatherViewOutput?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension WeatherViewController: WeatherViewInput {
    
}

