//
//  ViewController.swift
//  AnimateButton
//
//  Created by Craig Grummitt on 11/07/2016.
//  Copyright © 2016 interactivecoconut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bar1: UIView!
    @IBOutlet weak var bar2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func touchViewButton(_ sender: AnyObject) {
        self.bar1.frame.size.width = 0
        self.bar2.frame.size.width = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
