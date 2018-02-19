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

    @IBAction func rollButton(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(6) + 1)
        randomDiceIndex2 = Int(arc4random_uniform(6) + 1)
        
        print(randomDiceIndex1,",",randomDiceIndex2)
        changeImage(number: randomDiceIndex1, imageView: diceImageView1)
        changeImage(number: randomDiceIndex2, imageView: diceImageView2)
        
    }
    
    func changeImage (number : Int, imageView : UIImageView){
        if (number == 1){
            imageView.image = #imageLiteral(resourceName: "dice1")
        }
        else if (number == 2){
            imageView.image = #imageLiteral(resourceName: "dice2")
        }
        else if (number == 3){
            imageView.image = #imageLiteral(resourceName: "dice3")
        }
        else if (number == 4){
            imageView.image = #imageLiteral(resourceName: "dice4")
        }
        else if (number == 5){
            imageView.image = #imageLiteral(resourceName: "dice5")
        }
        else {
            imageView.image = #imageLiteral(resourceName: "dice6")
        }
    }

}

