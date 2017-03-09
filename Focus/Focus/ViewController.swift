//
//  ViewController.swift
//  Focus
//
//  Created by Michael Danylchuk on 2/28/17.
//  Copyright © 2017 Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var longhand = UIView()
    var shorthand = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
        longhand.frame = CGRect(x: 200 , y: 200 , width: 4 , height: 100 )
        longhand.backgroundColor = UIColor.red
        UIView.animate(withDuration: 3, delay: 1, options: [UIViewAnimationOptions.curveLinear, UIViewAnimationOptions.allowUserInteraction,UIViewAnimationOptions.autoreverse,UIViewAnimationOptions.transitionCurlDown], animations: {
            self.longhand.backgroundColor = UIColor.red
            self.longhand.frame = CGRect(x: 200, y: 400 , width: 50, height: 150)
            self.view.addSubview(self.longhand)

        }, completion: nil)
        view.backgroundColor = UIColor.gray
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}

