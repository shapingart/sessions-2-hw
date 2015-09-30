//
//  ViewController.swift
//  sessions-2-hw
//
//  Created by Ashley Johnson on 9/22/15.
//  Copyright © 2015 Ashley Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 1
    var numbers = [0,1,2,3]
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var bottomMapButton: UITabBarItem!
  
    @IBAction func button1(sender: AnyObject) {
        counter++
        
        if counter > 4 {
            counter = 0
        }
        
        myLabel.text = "\(counter)"
       // numbers.append(counter)
        let firstNumber = numbers [0]
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

