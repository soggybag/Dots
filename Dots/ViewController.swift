//
//  ViewController.swift
//  Dots
//
//  Created by mitchell hudson on 12/8/16.
//  Copyright © 2016 Mitchell Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let rect = CGRect(x: 50, y: 200, width: 200, height: 100)
        let dotsView = DotsView(frame: rect, numberOfDots: 5, dotSize: 15)
        dotsView.backgroundColor = UIColor.lightGray
        view.addSubview(dotsView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

