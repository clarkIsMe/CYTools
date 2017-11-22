//
//  CYConst.swift
//  tdd
//
//  Created by 春雨 on 2017/11/20.
//  Copyright © 2017年 ttlc. All rights reserved.
//

import UIKit

/*** 不带参数的公共方法 ***/

//MARK:- 屏幕宽度，高度
let CYScreenW = UIScreen.main.bounds.width
let CYScreenH = UIScreen.main.bounds.height

//MARK:- UIApplication.shared.keyWindow!
let CYKeyWindow = UIApplication.shared.keyWindow!
//MARK:- UIApplication.shared.keyWindow!.rootViewController!
let CYKeyCon = UIApplication.shared.keyWindow!.rootViewController!


/*** 带参数的公共方法 ***/

//MARK:- 16进制颜色
func CYColorFromRGB(_ rgbValue:Int32, _ alpha: CGFloat = 1.0) -> UIColor {
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16))/255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8))/255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF))/255.0,
                   alpha: alpha)
}
