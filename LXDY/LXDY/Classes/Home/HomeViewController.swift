//
//  HomeViewController.swift
//  LXDY
//
//  Created by 康健科技 on 2020/7/31.
//  Copyright © 2020 康健科技. All rights reserved.
//

import UIKit

private let kTitleViewH : CGFloat = 40
class HomeViewController: UIViewController {
    // MARK:- 懒加载属性
    fileprivate lazy var pageTitleView : PageTitleView = {[weak self] in
        let titleFrame = CGRect(x: 0, y: LL_StatusBarAndNavigationBarHeight, width: SCREENWIDTH, height: kTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        titleView.delegate = self
        return titleView
        }()
    
    fileprivate lazy var pageContentView : PageContentView = {[weak self] in
        
        // 1.确定内容的frame
        let contentH = SCREENHEIGHT - pageTitleView.maxY
        let contentFrame = CGRect(x: 0, y: pageTitleView.maxY, width: SCREENWIDTH, height: contentH)
        
        // 2.确定所有的子控制器
        var childVcs = [UIViewController]()
        // 2.确定所有的子控制器
        childVcs.append(RecommendViewController())
        childVcs.append(GameViewController())
        childVcs.append(AmuseViewController())
        childVcs.append(FunnyViewController())
        let contentView = PageContentView(frame: contentFrame, childVcs: childVcs, parentViewController: self)
        contentView.delegate = self
        return contentView
        }()
    
    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置UI界面
        setupUI()
    }
    
    
    
}

extension HomeViewController{
    
    /*
     设置UI
     */
    func setupUI() {
        
        setNavigationBar()
    }
    
    private func setNavigationBar()  {
        
        let btn = UIButton.init()
        btn.sizeToFit()
        btn.setImage(UIImage(named: "logo"), for: .normal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: btn)
        let size = CGSize(width: 35.0, height: 35.0)
        //    let historyItem = UIBarButtonItem.createItem(normalIcon: "image_my_history", heightIcon: "Image_scan_click", size: size)
        //    let searchItem = UIBarButtonItem.createItem(normalIcon: "btn_search", heightIcon: "btn_search_clicked", size: size)
        //    let qcodeItem = UIBarButtonItem.createItem(normalIcon: "Image_scan", heightIcon: "Image_scan_click", size: size)
        let historyItem = UIBarButtonItem(normalIcon: "image_my_history", heightIcon: "Image_scan_click", size: size)
        let searchItem = UIBarButtonItem(normalIcon: "btn_search", heightIcon: "btn_search_clicked", size: size)
        let qcodeItem = UIBarButtonItem(normalIcon: "Image_scan", heightIcon: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qcodeItem]
        
        view.addSubview(pageTitleView)
        
        // 3.添加ContentView
        view.addSubview(pageContentView)
        
    }
}


// MARK:- 遵守PageTitleViewDelegate协议
extension HomeViewController : PageTitleViewDelegate {
    func pageTitleView(_ titleView: PageTitleView, selectedIndex index: Int) {
        pageContentView.setCurrentIndex(index)
    }
}


// MARK:- 遵守PageContentViewDelegate协议
extension HomeViewController : PageContentViewDelegate {
    func pageContentView(_ contentView: PageContentView, progress: CGFloat, sourceIndex: Int, targetIndex: Int) {
        pageTitleView.setTitleWithProgress(progress, sourceIndex: sourceIndex, targetIndex: targetIndex)
    }
}
