//
//  DotsView.swift
//  Dots
//
//  Created by mitchell hudson on 12/8/16.
//  Copyright © 2016 Mitchell Hudson. All rights reserved.
//

import UIKit

class DotsView: UIView {
    
    var array = [UIView]()
    var dotSize: CGFloat = 20
    var numberOfDots = 3
    
    init(frame: CGRect, numberOfDots: Int, dotSize: CGFloat) {
        super.init(frame: frame)
        
        self.dotSize = dotSize
        self.numberOfDots = numberOfDots
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        for i in 0 ..< numberOfDots {
            
            let spacing: CGFloat = frame.width / CGFloat(numberOfDots)
            
            let x = CGFloat(i) * spacing // ???
            let y = frame.height / 2 - (dotSize / 2)
            let rect = CGRect(x: x, y: y, width: dotSize, height: dotSize)
            let dot = UIView(frame: rect)
            dot.backgroundColor = UIColor.red
            dot.layer.cornerRadius = dotSize / 2
            addSubview(dot)
            array.append(dot)
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}

