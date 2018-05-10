//
//  OrientationViewController.swift
//  ZHWOrientationSwift
//
//  Created by zhanghongwei on 9/5/18.
//  Copyright © 2018年 zhanghongwei. All rights reserved.
//

import UIKit

class OrientationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.green
        self.title = "横竖屏"
        
        let btn1 = UIButton(type: .system)
        btn1.setTitle("竖屏", for: .normal)
        btn1.backgroundColor = UIColor.orange
        btn1.frame = CGRect(x: 80, y: 100, width: 60, height: 40)
        btn1.addTarget(self, action: #selector(clickBtn1(sender:)), for: .touchUpInside)
        self.view.addSubview(btn1)
        
        let btn2 = UIButton(type: .system)
        btn2.setTitle("横屏", for: .normal)
        btn2.backgroundColor = UIColor.orange
        btn2.frame = CGRect(x: 150, y: 100, width: 60, height: 40)
        btn2.addTarget(self, action: #selector(clickBtn2(sender:)), for: .touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(type: .system)
        btn3.setTitle("横竖屏", for: .normal)
        btn3.backgroundColor = UIColor.orange
        btn3.frame = CGRect(x: 220, y: 100, width: 60, height: 40)
        btn3.addTarget(self, action: #selector(clickBtn3(sender:)), for: .touchUpInside)
        self.view.addSubview(btn3)
        
        let btn4 = UIButton(type: .system)
        btn4.setTitle("Left", for: .normal)
        btn4.backgroundColor = UIColor.orange
        btn4.frame = CGRect(x: 80, y: 170, width: 60, height: 40)
        btn4.addTarget(self, action: #selector(clickBtn4(sender:)), for: .touchUpInside)
        self.view.addSubview(btn4)
        
        let btn5 = UIButton(type: .system)
        btn5.setTitle("Portrait", for: .normal)
        btn5.backgroundColor = UIColor.orange
        btn5.frame = CGRect(x: 150, y: 170, width: 60, height: 40)
        btn5.addTarget(self, action: #selector(clickBtn5(sender:)), for: .touchUpInside)
        self.view.addSubview(btn5)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func clickBtn1(sender: UIButton) {
        self.navigationController?.pushViewController(PortraitViewController(), animated: true)
    }
    
    @objc func clickBtn2(sender: UIButton) {
        self.navigationController?.pushViewController(LandscapeViewController(), animated: true)
    }
    
    @objc func clickBtn3(sender: UIButton) {
        self.navigationController?.pushViewController(OrientationViewController(), animated: true)
    }

    @objc func clickBtn4(sender: UIButton) {
        self.interfaceOrientation(orientation: .landscapeRight)
    }
    
    @objc func clickBtn5(sender: UIButton) {
        self.interfaceOrientation(orientation: .portrait)
    }
}

extension OrientationViewController {
    //是否支持旋转
    override var shouldAutorotate: Bool {
        return true
    }
    
    //支持的方向
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .landscapeRight]
    }
    
    //默认支持的方向
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
}
