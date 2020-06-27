//
//  MainWheatherForecastCell.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 17.05.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import UIKit

enum Weekday: String, CaseIterable {
    
    case sunday = "Воскресенье"
    case monday = "Понедельник"
    case tuesday = "Вторник"
    case wednesday = "Среда"
    case thursday = "Четверг"
    case friday = "Пятница"
    case saturday = "Суббота"

}

class MainWheatherForecastCell: UICollectionViewCell {

    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: [WeekTemperatureCellObject] = []
    
    private let weekTemperatureCellReuseId = "WeekTemperatureCell"
    
    // MARK: Overriden methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.layer.cornerRadius = 4
        
        tableView.register(UINib(nibName: "WeekTemperatureCell", bundle: nil), forCellReuseIdentifier: weekTemperatureCellReuseId)
    }
    
    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        setNeedsLayout()
        layoutIfNeeded()
        let size = tableView.contentSize
        var newFrame = layoutAttributes.frame
        newFrame.size.height = ceil(size.height)
        layoutAttributes.frame = newFrame
        return layoutAttributes
    }
    
    // MARK: Internal
    
    func configure(with model: MainWheatherForecastCellObject) {
        #warning("TODO: Delete stub")
        for weekday in Weekday.allCases {
            viewModel.append(WeekTemperatureCellObject(weekday: weekday.rawValue,
                                                       temperature: "23 C",
                                                       imageName: "test"))
        }
    }
}

extension MainWheatherForecastCell: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: weekTemperatureCellReuseId) as? WeekTemperatureCell {
            cell.configure(with: viewModel[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }

}

extension MainWheatherForecastCell: UITableViewDelegate {
    
}
