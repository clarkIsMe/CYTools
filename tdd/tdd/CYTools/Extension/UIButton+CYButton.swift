//
//  CYButtonExtension.swift
//  tdd
//
//  Created by 春雨 on 2017/11/20.
//  Copyright © 2017年 ttlc. All rights reserved.
//

import UIKit

extension UIButton {
   
    
    /// 为UIButton添加block事件，默认事件为：UIControlEventTouchUpInside
    ///
    /// - Parameters:
    ///   - block: 闭包
    ///   - controlEvents: 事件类型
    func addAction(_ block: @escaping ()->Void, for controlEvents: UIControlEvents = UIControlEvents.touchUpInside) -> Void {
        let key: UnsafeRawPointer! = UnsafeRawPointer.init(bitPattern: "uibutton_cybutton_block".hashValue)
        objc_setAssociatedObject(self, key, block, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        self.addTarget(self, action: #selector(cy_action), for: controlEvents)
    }
    
    @objc func cy_action() -> Void {
        let key: UnsafeRawPointer! = UnsafeRawPointer.init(bitPattern: "uibutton_cybutton_block".hashValue)
        guard let block = objc_getAssociatedObject(self, key) as? ()->Void else { return }
        block()
        
    }
}
