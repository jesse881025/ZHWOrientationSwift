//
//  MainTabBarController.swift
//  ZHWOrientationSwift
//
//  Created by zhanghongwei on 10/5/18.
//  Copyright © 2018年 zhanghongwei. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0 {
            self.selectedIndex = 0
            self.interfaceOrientation(orientation: .portrait)
        } else if item.tag == 1 {
            self.selectedIndex = 1
            self.interfaceOrientation(orientation: .landscapeRight)
        } else if item.tag == 2 {
            self.selectedIndex = 2
        }
    }
    
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
//
//    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        
    }
    

}
