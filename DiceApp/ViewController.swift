//
//  ViewController.swift
//  DiceApp
//
//  Created by Luke Towell on 17/02/2018.
//  Copyright © 2018 Luke Towell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 1
    var randomDiceIndex2 : Int = 1
    
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        generateDice()
    }

    @IBAction func rollButton(_ sender: UIButton) {
        generateDice()
    }
    
    func generateDice(){
        randomDiceIndex1 = Int(arc4random_uniform(6) + 1)
        randomDiceIndex2 = Int(arc4random_uniform(6) + 1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1 - 1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2 - 1])
    }
    
}

