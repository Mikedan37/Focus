//
//  ViewController.swift
//  Focus
//
//  Created by Michael Danylchuk on 2/28/17.
//  Copyright © 2017 Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var time: UILabel!
    var timer = Timer()
    var minutes: Int = 0
    var seconds: Int = 0
    var fractions: Int = 0
    var hours: Int = 0
    var timestring = ""
    var timerison = false
    
    @IBAction func button(_ sender: UIButton) {
        
        if timerison == false{
             timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(ViewController.update), userInfo: nil, repeats: true)
          timer.fire()
            
        }
        if timerison == true{
            timer.invalidate()
            timerison = false
        }
        timerison = true
    }

    
    func update(){
        
        fractions += 1
        if fractions == 100{
            
            seconds += 1
            fractions = 0
        }
        
        if seconds == 60{
            
            minutes += 1
            seconds = 0
        }
        
        if minutes == 60{
            
            hours += 1
            minutes = 0
        }
        
        
        
        let fractionsString = fractions > 9 ? "\(fractions)" : "0\(fractions)"
        let secondsString = seconds > 9 ? "\(seconds)" : "0\(seconds)"
        let minutesString = minutes > 9 ? "\(minutes)" : "0\(minutes)"
        let hoursString = hours > 9 ? "\(hours)" : "0\(hours)"
        let timestring = "\(hoursString):\(minutesString):\(secondsString).\(fractionsString)"
        time.text = timestring
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        time.text = "0:00:00.00"
       
    }
     

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
 

}

