//
//  LXBaseTabBarControllerViewController.swift
//  LXDY
//
//  Created by 康健科技 on 2020/7/31.
//  Copyright © 2020 康健科技. All rights reserved.
//

import UIKit

class LXBaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        let homeVC = HomeViewController()
        let liveVC = LiveViewController();
        let followVC = FollowViewController();
        let profileVC = ProfileViewController()
        
        setupChildVc(childVc: homeVC, title: "首页", normalImageUrl: "btn_home_normal", selectedImageUrl: "btn_home_selected")
        setupChildVc(childVc: liveVC, title: "视频", normalImageUrl: "btn_column_normal", selectedImageUrl: "btn_column_selected")
        setupChildVc(childVc: followVC, title: "直播", normalImageUrl: "btn_live_normal", selectedImageUrl: "btn_live_selected")
        setupChildVc(childVc: profileVC, title: "我的", normalImageUrl: "btn_user_normal", selectedImageUrl: "btn_user_selected")
        let nav = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: liveVC)
        let nav3 = UINavigationController(rootViewController: followVC)
        let nav1 = UINavigationController(rootViewController: profileVC)
        self.viewControllers = [nav,nav2,nav3,nav1]
        tabBar.tintColor = BaseRedColor
    }
    
    
    func setupChildVc(childVc: UIViewController,title: String,normalImageUrl: String,selectedImageUrl: String){
        
        childVc.tabBarItem.title = title
        childVc.navigationItem.title = title
    childVc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
    childVc.tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: BaseRedColor], for: .selected)
        childVc.tabBarItem.image = UIImage(named: normalImageUrl)?.withRenderingMode(.alwaysOriginal)
        childVc.tabBarItem.selectedImage = UIImage(named: selectedImageUrl)?.withRenderingMode(.alwaysOriginal);
    }
    
}
