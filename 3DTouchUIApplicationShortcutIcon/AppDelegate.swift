//
//  AppDelegate.swift
//  3DTouchUIApplicationShortcutIcon
//
//  Created by Burak Tunc on 12.01.21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        if shortcutItem.type == "com.buraktuncdev.fotograf"{
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let initViewController = storyBoard.instantiateViewController(identifier: "3DTOUCH")
            self.window?.rootViewController = initViewController
            self.window?.makeKeyAndVisible()
        }else {
            print("NO BURKI")
        }
    }



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }


}

