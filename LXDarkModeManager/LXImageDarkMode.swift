//
//  LXUIImageExtension.swift
//  LXFoundationManager
//
//  Created by Mac on 2020/4/23.
//  Copyright © 2020 李响. All rights reserved.
// 暗黑模式适配


import UIKit
import AVFoundation

// MARK: - 图片处理
extension UIImage {
    
   /// 深色图片和浅色图片切换 （深色模式适配）
    ///
    /// - Parameters:
    ///   - light: 浅色图片
    ///   - dark: 深色图片
   public static func image(lightStr: String, darkStr: String) -> UIImage {
    
        let light = UIImage(named: lightStr)
        let dark = UIImage(named: lightStr)

    if light != nil && dark != nil {
            return image(light: light!, dark: dark!)
        }else {
            return light ?? dark ?? UIImage()
        }
   }

  /// 深色图片和浅色图片切换 （深色模式适配）
   ///
   /// - Parameters:
   ///   - light: 浅色图片
   ///   - dark:  深色图片
   public static func image(light: UIImage, dark: UIImage) -> UIImage {
        if #available(iOS 13.0, *) {
            guard let config = light.configuration else { return light }
            let lightImage = light.withConfiguration(config.withTraitCollection(UITraitCollection.init(userInterfaceStyle: UIUserInterfaceStyle.light)))
            lightImage.imageAsset?.register(dark, with: config.withTraitCollection(UITraitCollection.init(userInterfaceStyle: UIUserInterfaceStyle.dark)))
            return lightImage.imageAsset?.image(with: UITraitCollection.current) ?? light
        } else {
            return light
        }
    }
}


