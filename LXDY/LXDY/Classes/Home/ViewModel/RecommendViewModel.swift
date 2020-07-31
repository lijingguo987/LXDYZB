//
//  RecommendViewModel.swift
//  LXDY
//
//  Created by 康健科技 on 2020/7/31.
//  Copyright © 2020 康健科技. All rights reserved.
//

import UIKit

class RecommendViewModel : BaseViewModel {
    // MARK:- 懒加载属性
    lazy var cycleModels : [CycleModel] = [CycleModel]()
    fileprivate lazy var bigDataGroup : AnchorGroup = AnchorGroup()
    fileprivate lazy var prettyGroup : AnchorGroup = AnchorGroup()
}

