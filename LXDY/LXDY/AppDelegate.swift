//
//  AppDelegate.swift
//  LXDY
//
//  Created by 康健科技 on 2020/7/30.
//  Copyright © 2020 康健科技. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        let VC = LXBaseTabBarController()
        window?.rootViewController = VC
        
        return true
    }

   
}

