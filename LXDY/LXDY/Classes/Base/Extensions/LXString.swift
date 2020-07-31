//
//  LXString.swift
//  swiftPatient
//
//  Created by 康健科技 on 2020/1/2.
//  Copyright © 2020 康健科技. All rights reserved.
//

import Foundation
import UIKit

enum Validate {
    case email(_: String)
    case phoneNum(_: String)
    case carNum(_: String)
    case username(_: String)
    case password(_: String)
    case nickname(_: String)
    
    case URL(_: String)
    case IP(_: String)
    
    
    var isRight: Bool {
        var predicateStr:String!
        var currObject:String!
        switch self {
        case let .email(str):
            predicateStr = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
            currObject = str
        case let .phoneNum(str):
            predicateStr = "^((13[0-9])|(15[^4,\\D]) |(17[0,0-9])|(18[0,0-9]))\\d{8}$"
            currObject = str
        case let .carNum(str):
            predicateStr = "^[A-Za-z]{1}[A-Za-z_0-9]{5}$"
            currObject = str
        case let .username(str):
            predicateStr = "^[A-Za-z0-9]{6,20}+$"
            currObject = str
        case let .password(str):
            predicateStr = "^[a-zA-Z0-9]{6,20}+$"
            currObject = str
        case let .nickname(str):
            predicateStr = "^[\\u4e00-\\u9fa5]{4,8}$"
            currObject = str
        case let .URL(str):
            predicateStr = "^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"
            currObject = str
        case let .IP(str):
            predicateStr = "^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$"
            currObject = str
        }
        
        let predicate =  NSPredicate(format: "SELF MATCHES %@" ,predicateStr)
        return predicate.evaluate(with: currObject)
    }
}

extension NSObject{
    
   func StringIsEmpty(value: AnyObject?) -> Bool {
        //首先判断是否为nil
        if (nil == value) {
            //对象是nil，直接认为是空串
            return true
        }else{
            //然后是否可以转化为String
            if let myValue  = value as? String{
                //然后对String做判断
                return myValue == "" || myValue == "(null)" || 0 == myValue.count
            }else{
                //字符串都不是，直接认为是空串
                return true
            }
        }
    }
    
    class func textWithAddressStr(textStr: String,color: UIColor)->NSMutableAttributedString {
        
        let str = NSMutableAttributedString.init(string: textStr)
        str.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: NSRange(location:3,length:textStr.count - 3))

        return str
    }
    
    func autoLabelHeight(with text:String , labelWidth: CGFloat ,attributes : [NSAttributedString.Key: Any]) -> CGFloat{
        var size = CGRect()
        let size2 = CGSize(width: labelWidth, height: 0)//设置label的最大宽度
        size = text.boundingRect(with: size2, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes:attributes  , context: nil);
        return size.size.height
    }


}
