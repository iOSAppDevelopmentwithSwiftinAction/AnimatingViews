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
    @IBOutlet weak var bar1width: NSLayoutConstraint!
    @IBOutlet weak var bar2width: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func touchViewButton(_ sender: AnyObject) {
        self.bar1width.constant = 0
        self.bar2width.constant = 0
        self.view.layoutIfNeeded()
        
        UIView.animate(withDuration: 1,
            animations: {
                self.bar1.backgroundColor = UIColor.red
                self.bar1width.constant = 150
                self.view.layoutIfNeeded()
            }, completion: { finished in
                UIView.animate(withDuration: 1, animations: {
                    self.bar2.backgroundColor = UIColor.orange
                    self.bar2width.constant = 150
                    self.view.layoutIfNeeded()
                    }, completion: { finished in
                        let label1 = UILabel(frame: self.bar1.frame)
                        label1.textColor = UIColor.white
                        label1.text = "Chinese"
                        self.view.addSubview(label1)
                        
                        let label2 = UILabel(frame: self.bar2.frame)
                        label2.textColor = UIColor.white
                        label2.text = "Thai"
                        self.view.addSubview(label2)
                        
                    }
                )
            }
        )
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
