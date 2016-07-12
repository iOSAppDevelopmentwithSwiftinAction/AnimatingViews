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
        self.bar1.isHidden = true
        self.bar2.isHidden = true
    }
    @IBAction func touchGoButton(_ sender: AnyObject) {
        self.bar1.isHidden = false
        self.bar2.isHidden = false
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
