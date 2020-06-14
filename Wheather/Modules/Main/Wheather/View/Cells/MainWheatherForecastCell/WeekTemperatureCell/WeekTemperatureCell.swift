//
//  WeekTemperatureCell.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 14.06.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit

class WeekTemperatureCell: UITableViewCell {

    @IBOutlet weak var weekdayLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    
    func configure(with model: WeekTemperatureCellObject) {
        weekdayLabel.text = model.weekday
        tempLabel.text = model.temperature
    }
    
}
