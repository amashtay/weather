//
//  MainWheatherForecastCell.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 17.05.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit

class MainWheatherForecastCell: UICollectionViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.layer.cornerRadius = 4
    }

}
