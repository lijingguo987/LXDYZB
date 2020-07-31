//
//  NormalColor.swift
//  swiftPatient
//
//  Created by 康健科技 on 2019/12/31.
//  Copyright © 2019 康健科技. All rights reserved.
//

import UIKit

let NavigtaionBarColor = UIColor(red: 173, green: 163, blue: 66, alpha: 1)
let BaseBgColer = UIColor(hexString: "#f3f3f3")
let NormalOrangeColor = UIColor(hexString: "#FF7641")
let BaseBlockColor = UIColor(hexString: "#000000")
let BaseBlock1Color = UIColor(hexString: "#343536")
let BaseBlock2Color = UIColor(hexString: "#6e6f70")
let BaseBlock3Color = UIColor(hexString: "#929394")
let BaseWriteColor = UIColor(hexString: "#ffffff")
let BaseRedColor = UIColor(hexString: "#ff5000")
let BaseLineColor = UIColor(hexString: "#eaeaee")
extension UIColor {
    
    func RGB(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
         
       return UIColor.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: 1.0)
    }
     
     
    func RGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
         
        return UIColor.init(red: red / 255.0, green: green / 255.0, blue: blue / 255.0, alpha: alpha)
    }
     
     
    func ColorFromHex(rgbValue: Int) -> (UIColor) {
         
        return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                       green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                       blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,alpha: 1.0)
    }
     
     
    func ColorFromHex(rgbValue: Int, alpha: CGFloat) -> (UIColor) {
         
        return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                       green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                       blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,alpha: alpha)
    }
    
    convenience init(hexString: String) {
        let hexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
         
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
         
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
         
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
         
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
         
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
     
    // UIColor -> Hex String
   public var hexString: String? {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
         
        let multiplier = CGFloat(255.999999)
         
        guard self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) else {
            return nil
        }
         
        if alpha == 1.0 {
            return String(
                format: "#%02lX%02lX%02lX",
                Int(red * multiplier),
                Int(green * multiplier),
                Int(blue * multiplier)
            )
        }
        else {
            return String(
                format: "#%02lX%02lX%02lX%02lX",
                Int(red * multiplier),
                Int(green * multiplier),
                Int(blue * multiplier),
                Int(alpha * multiplier)
            )
        }
    }
}


