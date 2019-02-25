//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Nikolay Sherbakov on 20/12/18.
//  Copyright © 2018 Nikita Sherbakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImage: UIImageView!
    var randomBallShake:Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func shakeBall() {
        randomBallShake = Int.random(in: 0...4)
        print(randomBallShake)
        
            ballImage.image = UIImage(named: ballArray[randomBallShake])
    }
    
    @IBAction func shakeButton(_ sender: UIButton) {
        shakeBall()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        shakeBall() 
    }
}

