//
//  ViewController.swift
//  tdd
//
//  Created by 春雨 on 2017/11/17.
//  Copyright © 2017年 ttlc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        self.view.addSubview(btn)
        btn.backgroundColor = UIColor.green
        weak var WeakSelf = self
        btn.addAction({
            WeakSelf?.present(BViewController(), animated: true, completion: nil)
        })
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

