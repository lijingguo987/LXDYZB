//
//  LXViewNormalSet.swift
//  swiftPatient
//
//  Created by 康健科技 on 2019/12/31.
//  Copyright © 2019 康健科技. All rights reserved.
//

import UIKit

extension NSObject{
    
  class func AddBorderToView(view: UIView,radius: CGFloat){

    view.layer.shouldRasterize = true
    view.layer.cornerRadius = radius
    view.layer.masksToBounds = true
    view.layer.isOpaque = true
    view.layer.rasterizationScale = UIScreen.main.scale
}
    
    class func AddBorderToView(view: UIView,radius: CGFloat,lineColor: UIColor,lineWidth: CGFloat){

        AddBorderToView(view: view, radius: radius)
        view.layer.borderWidth = lineWidth
        view.layer.borderColor = lineColor.cgColor
    }
}

