//
//  GeneralBarPresenter.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 13.01.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import Foundation

class GeneralBarPresenter {
    
    weak var controller: GeneralBarViewInput?
}

extension GeneralBarPresenter: GeneralBarViewOutput {
    
    func moduleWasLoaded() {
        print("tst")
    }
    
}
