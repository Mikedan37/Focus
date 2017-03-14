//
//  TimerViewController.swift
//  Focus
//
//  Created by Michael Danylchuk on 3/13/17.
//  Copyright © 2017 Group. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet var Time: UILabel!
    @IBOutlet var Stop: UIButton!
    @IBOutlet var Start: UIButton!
    var binaryCount = 0b0000
    var timer = Timer()
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Stop(_ sender: Any) {
        timer.invalidate()
        binaryCount = 0b0000
        
        updateText()

    }
    
    @IBAction func Start(_ sender: Any) {
         timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: "countUp", userInfo: nil, repeats: true)
        RunLoop.current.add(timer, forMode: RunLoopMode.commonModes)
    }
    
    func countUp() {
        
        binaryCount += 0b0001
        // if the counter reached 16, reset it to 0
        if (binaryCount == 0b10000) { binaryCount = 0b0000 }
        updateText()
        }
    
    func updateText() {
        
        // Convert from Binary to String
        var text = String(binaryCount, radix:2)
        
        // Pad "0" to the left, to always have 4 binary digits
        for i in 0..<4 - Int(text)! {
            text = "0" + text;
        }
        
        Time.text = text
       
    }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
