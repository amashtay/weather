//
//  MainWheatherCell.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 17.05.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit

class MainWheatherCell: UICollectionViewCell {

    @IBOutlet weak var backgroundDecorationView: UIView!
    @IBOutlet weak var wheatherImage: UIImageView!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundDecorationView.layer.cornerRadius = 4
    }
    
    func setup(with viewModel: MainWheatherCellObject) {
        
    }

}
