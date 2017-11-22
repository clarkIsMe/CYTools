//
//  BViewController.swift
//  tdd
//
//  Created by 春雨 on 2017/11/20.
//  Copyright © 2017年 ttlc. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    var timer: Timer? = nil
    
    typealias HBlock = ()->()
    var block: HBlock?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        timer = Timer.cy_scheduledTimer(withTimeInterval: 1) {[unowned self] (timer) in
//            self.action()
//        }
        block = {[weak self] () -> Void in
            self?.action()
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 10) {
            self.block?()
        }
    }
    
    func action() -> Void {
        print("3秒已过")
    }
    
    deinit {
        print("释放")
        timer?.invalidate()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.dismiss(animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
