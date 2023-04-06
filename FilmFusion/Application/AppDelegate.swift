//
//  AppDelegate.swift
//  FilmFusion
//
//  Created by Alexandr Rodionov on 1.04.23.
//

import UIKit
import FirebaseCore
import RealmSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        
        print(Realm.Configuration.defaultConfiguration.fileURL)

        do {
            try Realm()
        } catch {
            print("Error initialising new realm: \(error)")
        }
        
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}
