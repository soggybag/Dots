//
//  ViewController.swift
//  Dots
//
//  Created by mitchell hudson on 12/8/16.
//  Copyright © 2016 Mitchell Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var button: UIButton!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Create a rectangle, this will get overriden by the constraints below
        let rect = CGRect(x: 50, y: 200, width: 200, height: 100)
        // Make a new instance of DotsView
        let dotsView = DotsView(frame: rect, numberOfDots: 5, dotSize: 15)
        dotsView.backgroundColor = UIColor.lightGray
        // Turn off the autoresize mask because we will use constraints
        dotsView.translatesAutoresizingMaskIntoConstraints = false
        // Add it as a subview
        view.addSubview(dotsView)
        // Add constraints
        dotsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        dotsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        dotsView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        dotsView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

