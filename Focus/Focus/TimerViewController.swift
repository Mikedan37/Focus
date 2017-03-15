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
    var count = 300
    

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.update), userInfo: nil, repeats: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Stop(_ sender: Any) {
    

    }
    
    @IBAction func Start(_ sender: Any) {
      
    }
    
    func update() {
        
        if(count > 0){
            let minutes = String(count / 60)
            let seconds = String(count % 60)
            Time.text = minutes + ":" + seconds
            count -= 1
            
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
