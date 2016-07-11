//
//  ViewController.swift
//  SuperCool
//
//  Created by Michael Demissie on 7/11/16.
//  Copyright © 2016 Michael Demissie. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    var num:Int = 0
    
    @IBAction func tapped(sender: AnyObject) {
        self.view.backgroundColor = getRandomColor()
        sender.setTitleColor(getRandomColor(), forState: .Normal)
        num += 1
        if num%2 == 0 && num%3 == 0 {
            sender.setTitle("Easy! I have feelings too.", forState: .Normal)
        }
        else if num%2 != 0 && num%3 == 0 {
            sender.setTitle("Could you slow down a bit?", forState: .Normal)
        }
        else {
            sender.setTitle("Tap Me!", forState: .Normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getRandomColor() -> UIColor{
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
}

