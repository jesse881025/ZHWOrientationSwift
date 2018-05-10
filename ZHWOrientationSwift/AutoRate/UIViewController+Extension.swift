//
//  UIViewController+Extension.swift
//  ZHWOrientationSwift
//
//  Created by zhanghongwei on 9/5/18.
//  Copyright © 2018年 zhanghongwei. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    //强制横竖屏旋转(有两种方案,推荐方案一)
    func interfaceOrientation(orientation:UIInterfaceOrientation) {
        let statusBarOrientation = UIApplication.shared.statusBarOrientation
        if statusBarOrientation == orientation {
            return
        }
        //方案一:
        //self.interfaceOrientation1(orientation: orientation)
        //方案二:
        self.interfaceOrientation2(orientation: orientation)
    }
    
    //方案一:
    fileprivate func interfaceOrientation1(orientation:UIInterfaceOrientation) {
        //if UIDevice.current.responds(to: Selector("setOrientation:")) {
            
        //}
    }
    
    //方案二:
    fileprivate func interfaceOrientation2(orientation:UIInterfaceOrientation) {
        //UIDevice.current.setValue(UIInterfaceOrientation.unknown.rawValue, forKey: "orientation")
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
}























