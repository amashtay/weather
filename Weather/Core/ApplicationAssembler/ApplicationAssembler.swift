//
//  ApplicationAssembly.swift
//  Weather
//
//  Created by Александр Тонхоноев on 13.01.2020.
//  Copyright © 2020 Александр Тонхоноев. All rights reserved.
//

import Swinject

/*
Application assembler необходим для построения графа зависимостей
в общем контейнере на всё приложение
*/
final class ApplicationAssembler {
    static let shared = Assembler([
        
        CoordinatorsAssembly(),
        
        GeneralBarAssembly(),
        SettingsAssembly(),
        
        WeatherAssembly(),
    ])
}
