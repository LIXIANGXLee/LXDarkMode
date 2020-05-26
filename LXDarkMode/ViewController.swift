//
//  ViewController.swift
//  LXDarkMode
//
//  Created by Mac on 2020/5/26.
//  Copyright © 2020 李响. All rights reserved.
//

import UIKit
import LXDarkModeManager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        self.view.backgroundColor = UIColor.color(lightColor: UIColor.white, darkColor: UIColor.lightGray)
        
        
        let imgView = UIImageView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        imgView.image = UIImage.image(light: UIImage(named: "tabbar_item1_select")!, dark: UIImage(named: "tabbar_item1")!)
        view.addSubview(imgView)
    }
}

