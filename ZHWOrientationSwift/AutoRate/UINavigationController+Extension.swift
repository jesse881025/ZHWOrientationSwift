//
//  UINavigationController+Extension.swift
//  ZHWOrientationSwift
//
//  Created by zhanghongwei on 9/5/18.
//  Copyright © 2018年 zhanghongwei. All rights reserved.
//

import Foundation
import UIKit

extension UINavigationController {
    //是否支持旋转
    open override var shouldAutorotate: Bool {
        return self.topViewController?.shouldAutorotate ?? false
    }
    
    //支持的方向
    open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.topViewController?.supportedInterfaceOrientations ?? .portrait
    }
    
    //默认支持的方向
    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return self.topViewController?.preferredInterfaceOrientationForPresentation ?? .portrait
    }

}
