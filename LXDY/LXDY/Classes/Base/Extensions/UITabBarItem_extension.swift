//
//  UITabBarItem_extension.swift
//  LXDY
//
//  Created by 康健科技 on 2020/7/31.
//  Copyright © 2020 康健科技. All rights reserved.
//

import UIKit
extension UIBarButtonItem{
    
    //   class func createItem(normalIcon: String,heightIcon: String,size: CGSize) ->UIBarButtonItem{
    //
    //        let btn = UIButton.init()
    //        btn.frame = CGRect(origin: CGPoint.zero, size: size)
    //        btn.setImage(UIImage(named: normalIcon), for: .normal)
    //        btn.setImage(UIImage(named: heightIcon), for: .highlighted)
    //        let item = UIBarButtonItem(customView: btn)
    //        return item
    //
    //    }
    
    convenience init(normalIcon: String,heightIcon: String,size: CGSize) {
        
        let btn = UIButton.init()
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        btn.setImage(UIImage(named: normalIcon), for: .normal)
        btn.setImage(UIImage(named: heightIcon), for: .highlighted)
        self.init(customView: btn)
    }
}
