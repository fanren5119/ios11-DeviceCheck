//
//  ViewController.swift
//  DCDeviceTest
//
//  Created by 王磊 on 2017/8/7.
//  Copyright © 2017年 wanglei. All rights reserved.
//

import UIKit
import DeviceCheck

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let device = DCDevice.current
        if device.isSupported {
            device.generateToken(completionHandler: { (data, error) in
                print(data)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

