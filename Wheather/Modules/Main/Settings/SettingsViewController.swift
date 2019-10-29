//
//  SettingsViewController.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private let settingsTableViewCellReuseId = "SettingsTableViewCell"
    
    var viewModel = [SettingsTableCellObject]()
    
    // MARK: View's lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "SettingsTableViewCell",
                        bundle: nil)
        tableView.register(nib,
                           forCellReuseIdentifier: settingsTableViewCellReuseId)
        
        viewModel = generateViewModel()
    }
    
    // MARK: Private
    
    /**
     This is for example
     */
    private func generateViewModel() -> [SettingsTableCellObject] {
        var array = [SettingsTableCellObject]()
    
        let cellObjectSettings = SettingsTableCellObject(title: "Настройки города")
        array.append(cellObjectSettings)
        
        let cellObjectAbout = SettingsTableCellObject(title: "О программе")
        array.append(cellObjectAbout)
        
        return array
    }
    
}

extension SettingsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: settingsTableViewCellReuseId) as? SettingsTableViewCell {
            cell.configureWith(title: viewModel[indexPath.row].title)
            return cell
        }
        return UITableViewCell()
    }
    
    
}

extension SettingsViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}