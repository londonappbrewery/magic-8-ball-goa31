//
//  ViewController.swift
//  magic8ball
//
//  Created by Kaushal Patel on 15/08/2017.
//  Copyright © 2017 Kaushal Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomEightBall : Int = 0
    
    let eightBallArry = ["ball1", "ball2", "ball3", "ball4","ball5"]
    
    @IBOutlet weak var eightBallimage: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func askbutton(_ sender: AnyObject) {
        
        changeEightBall()
        
    }
    
    func changeEightBall() {
        
        randomEightBall = Int(arc4random_uniform(5))
        
        eightBallimage.image = UIImage(named: eightBallArry[randomEightBall] )
        
        print(randomEightBall)
        
    }
    

}

