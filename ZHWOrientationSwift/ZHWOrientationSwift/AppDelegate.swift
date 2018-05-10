//
//  AppDelegate.swift
//  ZHWOrientationSwift
//
//  Created by zhanghongwei on 9/5/18.
//  Copyright © 2018年 zhanghongwei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //let navi_1 = UINavigationController(rootViewController: PortraitViewController())
        let navi_1 = MainNavigationController(rootViewController: PortraitViewController())
        navi_1.tabBarItem.title = "竖屏"
        navi_1.tabBarItem.tag = 0
        
        //let navi_2 = UINavigationController(rootViewController: LandscapeViewController())
        let navi_2 = MainNavigationController(rootViewController: LandscapeViewController())
        navi_2.tabBarItem.title = "横屏"
        navi_2.tabBarItem.tag = 1
        
        //let navi_3 = UINavigationController(rootViewController: OrientationViewController())
        let navi_3 = MainNavigationController(rootViewController: OrientationViewController())
        navi_3.tabBarItem.title = "横竖屏"
        navi_3.tabBarItem.tag = 2
        
        //let tabVC = UITabBarController()
        let tabVC = MainTabBarController()
        tabVC.viewControllers = [navi_1,navi_2,navi_3]
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        self.window?.rootViewController = tabVC
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

