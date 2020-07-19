//
//  AppDelegate.swift
//  FirebaseTemplate
//
//  Created by Omar Alibrahim on 5/9/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit
import Firebase
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FirebaseApp.configure()
        
        UITabBar.appearance().backgroundColor = #colorLiteral(red: 0.9371530414, green: 0.9373136759, blue: 0.9371429086, alpha: 1)
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.8861282468, green: 0.6873127818, blue: 0.2800491154, alpha: 1)
        Organization.self.assignProjects()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

