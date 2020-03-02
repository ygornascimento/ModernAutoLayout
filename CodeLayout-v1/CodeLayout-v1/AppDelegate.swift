//
//  AppDelegate.swift
//  CodeLayout-v1
//
//  Created by Ygor Nascimento on 23/02/20.
//  Copyright © 2020 Ygor Nascimento. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = RootViewController()
        window?.makeKeyAndVisible()
        return true
    }


}

