//
//  LXBtnNormalSet.swift
//  swiftPatient
//
//  Created by 康健科技 on 2019/12/31.
//  Copyright © 2019 康健科技. All rights reserved.
//

import UIKit

extension UIButton{
    
    func btnSetNormalColorWithWidth(width: CGFloat,height: CGFloat){
        
    let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: width, height: height);
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0);
        gradientLayer.locations = [0.1,1.0]
        gradientLayer.colors = [UIColor(hexString: "#ff5f00").cgColor,UIColor(hexString: "#ff0000").cgColor]
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    
   class func setNavbackBtnWIthTarget(taget: Any,action: Selector) -> UIButton {
        
        let btn = UIButton.init(type: .custom)
        btn.setImage(UIImage(named: "myfans_icon_return"), for: .normal)
        btn.setImage(UIImage(named: "myfans_icon_return"), for: .highlighted)
        btn.setTitle("", for: .normal)
        btn.setTitleColor(BaseWriteColor, for: .normal)
        btn.sizeToFit()
        btn.width = 44
        btn.height = 44
        btn.contentEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 0)
        btn.contentHorizontalAlignment = .leading
        btn.addTarget(taget, action: action, for: .touchUpInside)
        return btn
    }
}
