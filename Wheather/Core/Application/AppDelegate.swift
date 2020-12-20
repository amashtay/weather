//
//  AppDelegate.swift
//  Wheather
//
//  Created by Александр Тонхоноев on 29.10.2019.
//  Copyright © 2019 Александр Тонхоноев. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    lazy var applicationAssembler = ApplicationAssembler.shared.resolver
    lazy var appCoordinator = applicationAssembler.resolve(AppCoordinator.self)!
    
    /**
     Так как проект создан из Xcode 11 для iOS 13, то управление window может быть сделано через
     SceneDelegate
     
     подробнее тут:
     https://learnappmaking.com/scene-delegate-app-delegate-xcode-11-ios-13/
     
     Однако сейчас удалил Scene Delegate за ненадобностью
     */
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator.window = window
        appCoordinator.start()
        
        return true
    }
    
}

