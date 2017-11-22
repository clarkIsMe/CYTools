//
//  Timer+CYTimer.swift
//  tdd
//
//  Created by 春雨 on 2017/11/20.
//  Copyright © 2017年 ttlc. All rights reserved.
//

import Foundation

extension Timer {
    
    class func cy_scheduledTimer(withTimeInterval interval: TimeInterval, repeats: Bool = true, block: @escaping (Timer) -> Swift.Void) -> Timer {
        return scheduledTimer(timeInterval: interval, target: self, selector: #selector(action(_ :)), userInfo: block, repeats: repeats)
    }
    
    @objc private class func action(_ timer: Timer) -> Void {
        guard let block = timer.userInfo as? (Timer) -> Swift.Void else { return }
        block(timer)
    }
}
