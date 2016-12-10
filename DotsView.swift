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
    
    
    // Creates initial dots and stores them in array
    func setup() {
        for _ in 0 ..< numberOfDots {
            let dot = UIView()
            dot.backgroundColor = UIColor.red
            dot.layer.cornerRadius = dotSize / 2
            addSubview(dot)
            array.append(dot)
        }
    }
    
    // This method sets the size and position of dots within this view!
    func layoutDots() {
        for i in 0 ..< array.count {
            let spacing: CGFloat = frame.width / CGFloat(numberOfDots)
            let x = CGFloat(i) * spacing + (spacing / 2) - (dotSize / 2)
            let y = frame.height / 2 - (dotSize / 2)
            let rect = CGRect(x: x, y: y, width: dotSize, height: dotSize)
            array[i].frame = rect
        }
    }

    
    // When this view is drawn we need to layout the dots. 
    // This will handle changes constraints might make to size of this view.
    override func draw(_ rect: CGRect) {
        // Drawing code
        layoutDots()
    }
    

}

