//
//  WheatherViewController.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

class WheatherViewController: UIViewController {
    
    var presenter: WheatherViewOutput?
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let mainWheatherCellReuseId = "MainWheatherCell"
    private let mainWheatherForecastCellReuseId = "MainWheatherForecastCell"
    
    // MARK: View's lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(UINib(nibName: "MainWheatherCell", bundle: nil), forCellWithReuseIdentifier: mainWheatherCellReuseId)
        collectionView.register(UINib(nibName: "MainWheatherForecastCell", bundle: nil), forCellWithReuseIdentifier: mainWheatherForecastCellReuseId)
    }
    
}

extension WheatherViewController: WheatherViewInput {
    
}

extension WheatherViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch  indexPath.row {
        case 0:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: mainWheatherCellReuseId, for: indexPath) as? MainWheatherCell {
                return cell
            }
        case 1:
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: mainWheatherForecastCellReuseId, for: indexPath) as? MainWheatherForecastCell {
                cell.configure(with: MainWheatherForecastCellObject(weatherWeek: []))
                return cell
            }
        default:
            return UICollectionViewCell()
        }
        return UICollectionViewCell()
    }

}

extension WheatherViewController: UICollectionViewDelegate {
    
}

extension WheatherViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.size.width - collectionView.contentInset.left - collectionView.contentInset.right
        return CGSize(width: width, height: 400)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
         return UIEdgeInsets(top: 10.0, left: 0.0, bottom: 0.0, right: 0.0)
    }
}
