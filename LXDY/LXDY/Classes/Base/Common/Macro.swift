//
//  Macro.swift
//  swiftPatient
//
//  Created by 康健科技 on 2019/12/31.
//  Copyright © 2019 康健科技. All rights reserved.
//

import UIKit

let SCREENWIDTH = UIScreen.main.bounds.width
let SCREENHEIGHT = UIScreen.main.bounds.height
let MARGIN: CGFloat = 10
let kStatusBarH : CGFloat = 20
let kNavigationBarH : CGFloat = 44
let kTabbarH : CGFloat = 44
let kScreenW = SCREENWIDTH
let kScreenH = SCREENHEIGHT

//判断设备
let isPhone = UIDevice.current.userInterfaceIdiom == .phone
let iPhone4s = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? __CGSizeEqualToSize(CGSize(width:640,height:960), (UIScreen.main.currentMode?.size)!) : false
let iPhone5 = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? __CGSizeEqualToSize(CGSize(width:640,height:1136), (UIScreen.main.currentMode?.size)!) : false
let iPhone6 = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? __CGSizeEqualToSize(CGSize(width:750,height:1334), (UIScreen.main.currentMode?.size)!) : false
let iPhone6Puls = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? __CGSizeEqualToSize(CGSize(width:1242,height:2208), (UIScreen.main.currentMode?.size)!) : false
let iPhone7 = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? __CGSizeEqualToSize(CGSize(width:750,height:1334), (UIScreen.main.currentMode?.size)!) : false
let iPhone7Puls = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? __CGSizeEqualToSize(CGSize(width:1242,height:2208), (UIScreen.main.currentMode?.size)!) : false
let IS_IPHONE_X = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? (__CGSizeEqualToSize(CGSize(width:1125,height:2436), (UIScreen.main.currentMode?.size)!) && isPhone) : false
let IS_IPHONE_Xr = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? (__CGSizeEqualToSize(CGSize(width:828,height:1792), (UIScreen.main.currentMode?.size)!) && isPhone) : false
let IS_IPHONE_Xs = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ? (__CGSizeEqualToSize(CGSize(width:1125,height:2436), (UIScreen.main.currentMode?.size)!) && isPhone) : false
let IS_IPHONE_Xs_Max = UIScreen.instancesRespond(to: #selector(getter: UIScreen.main.currentMode)) ?(__CGSizeEqualToSize(CGSize(width:1242,height:2688), (UIScreen.main.currentMode?.size)!) && isPhone) : false
let LL_iPhoneX = (IS_IPHONE_X == true || IS_IPHONE_Xr == true || IS_IPHONE_Xs == true || IS_IPHONE_Xs_Max == true)
let LL_IPHONE_XBottomViewH:CGFloat = LL_iPhoneX ? 94 : 60
let LL_NavigationBarHeight: CGFloat = 44.0
let TabBarHeight:CGFloat = 49.0
let LL_TabbarSafeBottomMargin: CGFloat = ((IS_IPHONE_X == true || IS_IPHONE_Xr == true || IS_IPHONE_Xs == true || IS_IPHONE_Xs_Max == true) ? 34.0 : 0.0)
let LL_StatusBarAndNavigationBarHeight: CGFloat = LL_iPhoneX ? 88.0 : 64.0

let IS_LOGIN_KEY = "IS_LOGIN_KEY"
let IS_LOGIN = UserDefaults.standard.bool(forKey: IS_LOGIN_KEY)
let DEVICEIDTOKEN_KEY = "DEVICEIDTOKEN_KEY"
let DEVICEIDTOKEN = UserDefaults.standard.value(forKey: DEVICEIDTOKEN_KEY)
let NORMALIMAGEICON = "service_img_staff"



