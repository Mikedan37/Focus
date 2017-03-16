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
    var seconds = 30
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
        Time.text = "30"
        Start.isHidden = false
        seconds = 30

    }
    
    @IBAction func Start(_ sender: Any) {
      
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerViewController.counter), userInfo: nil, repeats: true)
            Start.isHidden = true
    }
    
    func counter() {
        seconds -= 1
        Time.text = String(seconds)
        if (seconds == 0){
            timer.invalidate()
            Time.text = "30"
            seconds = 30
            Start.isHidden = false
        }
        
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
